.class public final Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/util/ArrayList;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 1

    .line 132
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->asBinder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "avc1"

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string v1, "hev1"

    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_9

    :cond_2
    const-string v1, "dvav"

    .line 200
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "dva1"

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "dvhe"

    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "dvh1"

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_8

    :cond_3
    const-string v1, "av01"

    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo p0, "video/av01"

    return-object p0

    :cond_4
    const-string/jumbo v1, "vp9"

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "vp09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string/jumbo v1, "vp8"

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "vp08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_6

    :cond_6
    const-string v1, "mp4a"

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "mp4a."

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    const/4 v1, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    .line 218
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 219
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_7
    :goto_0
    if-nez v0, :cond_8

    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_8
    return-object v0

    :cond_9
    const-string v0, "ac-3"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_5

    :cond_a
    const-string v0, "ec-3"

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_4

    :cond_b
    const-string v0, "ec+3"

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_c
    const-string v0, "ac-4"

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "dac4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    const-string v0, "dtsc"

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "dtse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2

    :cond_e
    const-string v0, "dtsh"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    :cond_f
    const-string v0, "opus"

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "audio/opus"

    return-object p0

    :cond_10
    const-string/jumbo v0, "vorbis"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "audio/vorbis"

    return-object p0

    :cond_11
    const-string v0, "flac"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "audio/flac"

    return-object p0

    .line 245
    :cond_12
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_1
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :cond_14
    :goto_2
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_15
    :goto_3
    const-string p0, "audio/ac4"

    return-object p0

    :cond_16
    :goto_4
    const-string p0, "audio/eac3"

    return-object p0

    :cond_17
    :goto_5
    const-string p0, "audio/ac3"

    return-object p0

    :cond_18
    :goto_6
    const-string/jumbo p0, "video/x-vnd.on2.vp8"

    return-object p0

    :cond_19
    :goto_7
    const-string/jumbo p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_1a
    :goto_8
    const-string/jumbo p0, "video/dolby-vision"

    return-object p0

    :cond_1b
    :goto_9
    const-string/jumbo p0, "video/hevc"

    return-object p0

    :cond_1c
    :goto_a
    const-string/jumbo p0, "video/avc"

    return-object p0
.end method

.method private static ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)I
    .locals 4

    .line 404
    sget-object v0, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 406
    sget-object v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;

    .line 407
    iget-object v3, v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    iget p0, v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;->onMessageChannelReady:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static ICustomTabsService(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 393
    sget-object v0, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 395
    sget-object v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;

    .line 396
    iget-object v3, v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    iget-object p0, v2, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static asBinder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    .line 385
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static asInterface(Ljava/lang/String;)I
    .locals 0

    .line 374
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onRelationshipValidationResult(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static extraCallback(Ljava/lang/String;)Z
    .locals 1

    .line 137
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->asBinder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 155
    :cond_0
    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->onRelationshipValidationResult(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 156
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 157
    invoke-static {v3}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 158
    invoke-static {v3}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static onNavigationEvent(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_7

    const/16 v0, 0x21

    if-eq p0, v0, :cond_6

    const/16 v0, 0x23

    if-eq p0, v0, :cond_5

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "audio/ac4"

    return-object p0

    :pswitch_1
    const-string p0, "audio/opus"

    return-object p0

    :pswitch_2
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :pswitch_3
    const-string p0, "audio/vnd.dts"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "video/mpeg"

    return-object p0

    :pswitch_5
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "video/mpeg2"

    return-object p0

    :cond_0
    const-string p0, "audio/eac3"

    return-object p0

    :cond_1
    const-string p0, "audio/ac3"

    return-object p0

    :cond_2
    const-string/jumbo p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_3
    const-string/jumbo p0, "video/wvc1"

    return-object p0

    :cond_4
    :pswitch_7
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_5
    const-string/jumbo p0, "video/hevc"

    return-object p0

    :cond_6
    const-string/jumbo p0, "video/avc"

    return-object p0

    :cond_7
    const-string/jumbo p0, "video/mp4v-es"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Z
    .locals 1

    .line 127
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->asBinder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 175
    :cond_0
    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->onRelationshipValidationResult(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 176
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 177
    invoke-static {v3}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 178
    invoke-static {v3}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static onRelationshipValidationResult(Ljava/lang/String;)I
    .locals 1

    .line 314
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 316
    :cond_0
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 318
    :cond_1
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 320
    :cond_2
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/cea-708"

    .line 321
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/x-subrip"

    .line 322
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/x-quicktime-tx3g"

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/x-rawcc"

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/vobsub"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/pgs"

    .line 325
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/dvbsubs"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "application/id3"

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-emsg"

    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-scte35"

    .line 329
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "application/x-camera-motion"

    .line 331
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 334
    :cond_5
    invoke-static {p0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public static onTransact(Ljava/lang/String;)I
    .locals 4

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "audio/true-hd"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "audio/ac4"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "audio/eac3-joc"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p0, 0xe

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0x12

    return p0

    :pswitch_5
    return v2

    :pswitch_6
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_6
        -0x41455b98 -> :sswitch_5
        0xb269698 -> :sswitch_4
        0xb269699 -> :sswitch_3
        0x59ae0c65 -> :sswitch_2
        0x59c2dc42 -> :sswitch_1
        0x5cc95062 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
