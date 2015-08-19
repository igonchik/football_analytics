from django.db import models
from datetime import datetime
from django.contrib.auth.models import User as TUser


class TLocalization(models.Model):
    langcode = models.CharField(max_length=5, primary_key=True)

    def __unicode__(self):
        return self.langcode


class TTweetsAuthor(models.Model):
    ta_id = models.AutoField(primary_key=True)
    url = models.URLField()
    name = models.CharField(max_length=255)
    rating = models.PositiveIntegerField(default=500)
    maxid = models.PositiveIntegerField(default=0)


class TTweetsHashTag(models.Model):
    hashtag = models.CharField(max_length=255, primary_key=True)

    def __unicode__(self):
        return self.hashtag


class TTweetsTweet(models.Model):
    tt_id = models.AutoField(primary_key=True)
    ta_id = models.ForeignKey(TTweetsAuthor)
    text = models.TextField()
    created_at = models.DateTimeField()
    hashtags = models.ManyToManyField(TTweetsHashTag, through='TTweetsTweetHashTag')

    def __unicode__(self):
        return self.text


class TWorldPart(models.Model):
    wp_id = models.AutoField(primary_key=True)
    coordX = models.PositiveIntegerField()
    coordY = models.PositiveIntegerField()


class TWorldPartTr(models.Model):
    wp_id = models.ForeignKey(TWorldPart)
    langcode = models.ForeignKey(TLocalization)
    wp_name = models.CharField(max_length=255)

    def __unicode__(self):
        return self.wp_name


class TWorldRegion(models.Model):
    wr_id = models.AutoField(primary_key=True)
    wp_id = models.ForeignKey(TWorldPart)
    coordX = models.PositiveIntegerField()
    coordY = models.PositiveIntegerField()


class TWorldRegionTr(models.Model):
    wr_id = models.ForeignKey(TWorldRegion)
    langcode = models.ForeignKey(TLocalization)
    wr_name = models.CharField(max_length=255)

    def __unicode__(self):
        return self.wr_name


class TWorldCountry(models.Model):
    wc_id = models.AutoField(primary_key=True)
    wr_id = models.ForeignKey(TWorldRegion)
    coordX = models.PositiveIntegerField()
    coordY = models.PositiveIntegerField()


class TWorldCountryTr(models.Model):
    wc_id = models.ForeignKey(TWorldCountry)
    langcode = models.ForeignKey(TLocalization)
    wc_name = models.CharField(max_length=255)

    def __unicode__(self):
        return self.wc_name


class TWorldCity(models.Model):
    wcity_id = models.AutoField(primary_key=True)
    wc_id = models.ForeignKey(TWorldCountry)
    coordX = models.PositiveIntegerField()
    coordY = models.PositiveIntegerField()


class TWorldCityTr(models.Model):
    wcity_id = models.ForeignKey(TWorldCity)
    langcode = models.ForeignKey(TLocalization)
    wcity_name = models.CharField(max_length=255)

    def __unicode__(self):
        return self.wcity_name


class TContentVideoView(models.Model):
    cvv_id = models.AutoField(primary_key=True)
    tstamp_update = models.DateTimeField(auto_now=True)
    content = models.FileField(upload_to='videoview')
    logo = models.ImageField(upload_to='videoview_image')


class TContentVideoViewTr(models.Model):
    cvv_id = models.ForeignKey(TContentVideoView)
    langcode = models.ForeignKey(TLocalization)
    cvv_name = models.CharField(max_length=255)
    cvv_desk = models.CharField(max_length=500, blank=True, null=True)

    def __unicode__(self):
        return self.cvv_name


class TContentVideo(models.Model):
    cvv_id = models.AutoField(primary_key=True)
    tstamp_update = models.DateTimeField(auto_now=True)
    content = models.FileField(upload_to='video')
    logo = models.ImageField(upload_to='video_image', blank=True, null=True)


class TContentVideoTr(models.Model):
    cv_id = models.ForeignKey(TContentVideo)
    langcode = models.ForeignKey(TLocalization)
    cv_name = models.CharField(max_length=255)
    cv_desk = models.CharField(max_length=255)

    def __unicode__(self):
        return self.cv_name


class TContentPhoto(models.Model):
    cvv_id = models.AutoField(primary_key=True)
    tstamp_update = models.DateTimeField(auto_now=True)
    content = models.ImageField(upload_to='photo')
    logo = models.ImageField(upload_to='photo', blank=True, null=True)


class TContentPhotoTr(models.Model):
    cp_id = models.ForeignKey(TContentPhoto)
    langcode = models.ForeignKey(TLocalization)
    cp_name = models.CharField(max_length=255)
    cp_desk = models.CharField(max_length=500, blank=True, null=True)

    def __unicode__(self):
        return self.cp_name


class TContentArticle(models.Model):
    ca_id = models.AutoField(primary_key=True)
    tstamp_update = models.DateTimeField(auto_now=True)
    content = models.TextField()
    logo = models.ImageField(upload_to='article', blank=True, null=True)
    author = models.ForeignKey(TUser)


class TContentArticleTr(models.Model):
    ca_id = models.ForeignKey(TContentArticle)
    langcode = models.ForeignKey(TLocalization)
    ca_name = models.CharField(max_length=255)
    ca_desk = models.CharField(max_length=500, blank=True, null=True)

    def __unicode__(self):
        return self.ca_name


class TFootballDiv(models.Model):
    fd_id = models.AutoField(primary_key=True)
    url = models.URLField(blank=True, null=True)


class TFootballDivTr(models.Model):
    fd_id = models.ForeignKey(TFootballDiv)
    langcode = models.ForeignKey(TLocalization)
    fd_name = models.CharField(max_length=255)

    def __unicode__(self):
        return self.fd_name


class TFootballPlayer(models.Model):
    fp_id = models.AutoField(primary_key=True)
    official_url = models.URLField(null=True, blank=True)
    stat_url = models.URLField(null=True, blank=True)
    twitter = models.URLField(null=True, blank=True)
    photo = models.ImageField(null=True, blank=True, upload_to='images')
    tweets = models.ManyToManyField(TTweetsTweet, through='TTweetsPlayerTweetRel')


class TFootballPlayerTr(models.Model):
    fp_id = models.ForeignKey(TFootballPlayer)
    langcode = models.ForeignKey(TLocalization)
    fc_name = models.CharField(max_length=255)
    fc_desc = models.CharField(max_length=500, blank=True, null=True)

    def __unicode__(self):
        return self.fc_name


class TFootballClub(models.Model):
    fc_id = models.AutoField(primary_key=True)
    stat_url = models.URLField(null=True, blank=True)
    official_url = models.URLField(null=True, blank=True)
    twitter = models.URLField(null=True, blank=True)
    logo = models.ImageField(null=True, blank=True, upload_to='images')
    players = models.ManyToManyField(TFootballPlayer, through='TFootballClubPlayerRel')
    videoviews = models.ManyToManyField(TContentVideoView, through='TContentClubVideoViewRel')
    videos = models.ManyToManyField(TContentVideo, through='TContentClubVideoRel')
    photos = models.ManyToManyField(TContentPhoto, through='TContentClubPhotoRel')
    articles = models.ManyToManyField(TContentArticle, through='TContentClubArticleRel')
    tweets = models.ManyToManyField(TTweetsTweet, through='TTweetsClubTweetRel')


class TFootballClubTr(models.Model):
    fc_id = models.ForeignKey(TFootballClub)
    langcode = models.ForeignKey(TLocalization)
    fc_name = models.CharField(max_length=255)
    fc_desc = models.CharField(max_length=500, blank=True, null=True)

    def __unicode__(self):
        return self.fc_name


class TFootballClubPlayerRel(models.Model):
    fc_id = models.ForeignKey(TFootballClub)
    fp_id = models.ForeignKey(TFootballPlayer)
    rumor_tstamp = models.DateTimeField(null=True, blank=True)
    active = models.BooleanField(default=False)


class TContentClubVideoViewRel(models.Model):
    fc_id = models.ForeignKey(TFootballClub)
    cvv_id = models.ForeignKey(TContentVideoView)


class TContentClubVideoRel(models.Model):
    fc_id = models.ForeignKey(TFootballClub)
    cv_id = models.ForeignKey(TContentVideo)


class TContentClubPhotoRel(models.Model):
    fc_id = models.ForeignKey(TFootballClub)
    cp_id = models.ForeignKey(TContentPhoto)


class TContentClubArticleRel(models.Model):
    fc_id = models.ForeignKey(TFootballClub)
    ca_id = models.ForeignKey(TContentArticle)


class TTweetsClubTweetRel(models.Model):
    fc_id = models.ForeignKey(TFootballClub)
    tt_id = models.ForeignKey(TTweetsTweet)


class TTweetsPlayerTweetRel(models.Model):
    fp_id = models.ForeignKey(TFootballPlayer)
    tt_id = models.ForeignKey(TTweetsTweet)


class TTweetsTweetHashTag(models.Model):
    th_id = models.ForeignKey(TTweetsHashTag)
    tt_id = models.ForeignKey(TTweetsTweet)


class TTweetsClubHashTag(models.Model):
    tch_id = models.AutoField(primary_key=True)
    fc_id = models.ForeignKey(TFootballClub)
    th_id = models.ForeignKey(TTweetsHashTag)


class TTweetsPlayerHashTag(models.Model):
    tph_id = models.AutoField(primary_key=True)
    fp_id = models.ForeignKey(TFootballPlayer)
    th_id = models.ForeignKey(TTweetsHashTag)