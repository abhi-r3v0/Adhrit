.class public final Lo/CredPointModel;
.super Lo/stopScroll;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/CampaignDatabase;

.field public onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/CampaignDatabase;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/stopScroll;-><init>()V

    .line 24
    iput-object p2, p0, Lo/CredPointModel;->ICustomTabsCallback:Lo/CampaignDatabase;

    .line 1034
    iput-object p1, p0, Lo/CredPointModel;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 40
    iget-object p1, p0, Lo/CredPointModel;->ICustomTabsCallback:Lo/CampaignDatabase;

    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lo/CredPointModel;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, -0x1

    .line 1050
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "LocalContentUriFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "PartialDiskCacheProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "LocalContentUriThumbnailFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "DataFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "PostprocessedBitmapMemoryCacheProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "LocalAssetFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_6
    const-string v2, "BitmapMemoryCacheProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "DiskCacheProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v2, "VideoThumbnailProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_9
    const-string v2, "NetworkFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a
    const-string v2, "EncodedMemoryCacheProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string v2, "LocalFileFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_c
    const-string v2, "LocalResourceFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_d
    const-string v2, "BitmapMemoryCacheGetProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_e
    const-string v2, "QualifiedResourceFetchProducer"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x7

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x4

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x5

    .line 41
    :goto_1
    invoke-interface {p1, v0, v3, p3, p2}, Lo/CampaignDatabase;->ICustomTabsCallback(Ljava/lang/String;IZLjava/lang/String;)V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7245881e -> :sswitch_e
        -0x72166c8a -> :sswitch_d
        -0x645fbf8d -> :sswitch_c
        -0x5e2cabbb -> :sswitch_b
        -0x4df0ea1b -> :sswitch_a
        -0x48fa9b02 -> :sswitch_9
        0x1c39d583 -> :sswitch_8
        0x271e6a77 -> :sswitch_7
        0x39158fe4 -> :sswitch_6
        0x3cc4fa07 -> :sswitch_5
        0x3cfad516 -> :sswitch_4
        0x669ea4c2 -> :sswitch_3
        0x6ae0f45e -> :sswitch_2
        0x7dbdd736 -> :sswitch_1
        0x7dfbc52e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
