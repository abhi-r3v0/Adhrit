.class public final Lo/asGzippedBytes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/asGzippedBytes$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final API_KEY_RESOURCE_NAME:Ljava/lang/String; = "google_api_key"

.field private static final APP_ID_RESOURCE_NAME:Ljava/lang/String; = "google_app_id"

.field private static final DATABASE_URL_RESOURCE_NAME:Ljava/lang/String; = "firebase_database_url"

.field private static final GA_TRACKING_ID_RESOURCE_NAME:Ljava/lang/String; = "ga_trackingId"

.field private static final GCM_SENDER_ID_RESOURCE_NAME:Ljava/lang/String; = "gcm_defaultSenderId"

.field private static final PROJECT_ID_RESOURCE_NAME:Ljava/lang/String; = "project_id"

.field private static final STORAGE_BUCKET_RESOURCE_NAME:Ljava/lang/String; = "google_storage_bucket"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final applicationId:Ljava/lang/String;

.field private final databaseUrl:Ljava/lang/String;

.field private final gaTrackingId:Ljava/lang/String;

.field private final gcmSenderId:Ljava/lang/String;

.field private final projectId:Ljava/lang/String;

.field private final storageBucket:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1003
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 140
    iput-object p1, p0, Lo/asGzippedBytes;->applicationId:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lo/asGzippedBytes;->apiKey:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lo/asGzippedBytes;->databaseUrl:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lo/asGzippedBytes;->gaTrackingId:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lo/asGzippedBytes;->gcmSenderId:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lo/asGzippedBytes;->storageBucket:Ljava/lang/String;

    .line 146
    iput-object p7, p0, Lo/asGzippedBytes;->projectId:Ljava/lang/String;

    return-void

    .line 1029
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ApplicationId must be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/asGzippedBytes$3;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p7}, Lo/asGzippedBytes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lo/asGzippedBytes;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/asGzippedBytes;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lo/asGzippedBytes;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/asGzippedBytes;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lo/asGzippedBytes;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/asGzippedBytes;->databaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lo/asGzippedBytes;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/asGzippedBytes;->gaTrackingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lo/asGzippedBytes;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/asGzippedBytes;->gcmSenderId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lo/asGzippedBytes;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/asGzippedBytes;->storageBucket:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lo/asGzippedBytes;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/asGzippedBytes;->projectId:Ljava/lang/String;

    return-object p0
.end method

.method public static fromResource(Landroid/content/Context;)Lo/asGzippedBytes;
    .locals 12

    .line 156
    new-instance v0, Lo/getAndroidDisplayRatio;

    invoke-direct {v0, p0}, Lo/getAndroidDisplayRatio;-><init>(Landroid/content/Context;)V

    .line 2007
    iget-object p0, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v1, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v2, "string"

    const-string v3, "google_app_id"

    invoke-virtual {p0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 2008
    :cond_0
    iget-object v3, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    .line 158
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 161
    :cond_1
    new-instance p0, Lo/asGzippedBytes;

    .line 3007
    iget-object v3, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v5, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v6, "google_api_key"

    invoke-virtual {v3, v6, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move-object v5, v1

    goto :goto_1

    .line 3008
    :cond_2
    iget-object v5, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 4007
    :goto_1
    iget-object v3, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v6, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v7, "firebase_database_url"

    invoke-virtual {v3, v7, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move-object v6, v1

    goto :goto_2

    .line 4008
    :cond_3
    iget-object v6, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 5007
    :goto_2
    iget-object v3, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v7, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v8, "ga_trackingId"

    invoke-virtual {v3, v8, v2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move-object v7, v1

    goto :goto_3

    .line 5008
    :cond_4
    iget-object v7, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 6007
    :goto_3
    iget-object v3, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v8, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v9, "gcm_defaultSenderId"

    invoke-virtual {v3, v9, v2, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    move-object v8, v1

    goto :goto_4

    .line 6008
    :cond_5
    iget-object v8, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 7007
    :goto_4
    iget-object v3, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v9, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v10, "google_storage_bucket"

    invoke-virtual {v3, v10, v2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    move-object v9, v1

    goto :goto_5

    .line 7008
    :cond_6
    iget-object v9, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 8007
    :goto_5
    iget-object v3, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v10, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v11, "project_id"

    invoke-virtual {v3, v11, v2, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_6

    .line 8008
    :cond_7
    iget-object v0, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v10, v1

    move-object v3, p0

    .line 168
    invoke-direct/range {v3 .. v10}, Lo/asGzippedBytes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 227
    instance-of v0, p1, Lo/asGzippedBytes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 230
    :cond_0
    check-cast p1, Lo/asGzippedBytes;

    .line 231
    iget-object v0, p0, Lo/asGzippedBytes;->applicationId:Ljava/lang/String;

    iget-object v2, p1, Lo/asGzippedBytes;->applicationId:Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 9001
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_f

    .line 231
    iget-object v0, p0, Lo/asGzippedBytes;->apiKey:Ljava/lang/String;

    iget-object v2, p1, Lo/asGzippedBytes;->apiKey:Ljava/lang/String;

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    .line 10001
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_f

    .line 232
    iget-object v0, p0, Lo/asGzippedBytes;->databaseUrl:Ljava/lang/String;

    iget-object v2, p1, Lo/asGzippedBytes;->databaseUrl:Ljava/lang/String;

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_5

    .line 11001
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_f

    .line 233
    iget-object v0, p0, Lo/asGzippedBytes;->gaTrackingId:Ljava/lang/String;

    iget-object v2, p1, Lo/asGzippedBytes;->gaTrackingId:Ljava/lang/String;

    if-eq v0, v2, :cond_8

    if-eqz v0, :cond_7

    .line 12001
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_f

    .line 234
    iget-object v0, p0, Lo/asGzippedBytes;->gcmSenderId:Ljava/lang/String;

    iget-object v2, p1, Lo/asGzippedBytes;->gcmSenderId:Ljava/lang/String;

    if-eq v0, v2, :cond_a

    if-eqz v0, :cond_9

    .line 13001
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_f

    .line 235
    iget-object v0, p0, Lo/asGzippedBytes;->storageBucket:Ljava/lang/String;

    iget-object v2, p1, Lo/asGzippedBytes;->storageBucket:Ljava/lang/String;

    if-eq v0, v2, :cond_c

    if-eqz v0, :cond_b

    .line 14001
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_f

    .line 236
    iget-object v0, p0, Lo/asGzippedBytes;->projectId:Ljava/lang/String;

    iget-object p1, p1, Lo/asGzippedBytes;->projectId:Ljava/lang/String;

    if-eq v0, p1, :cond_e

    if-eqz v0, :cond_d

    .line 15001
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_c

    :cond_d
    const/4 p1, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 p1, 0x1

    :goto_d
    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v1
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lo/asGzippedBytes;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lo/asGzippedBytes;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDatabaseUrl()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lo/asGzippedBytes;->databaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getGaTrackingId()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lo/asGzippedBytes;->gaTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGcmSenderId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lo/asGzippedBytes;->gcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProjectId()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lo/asGzippedBytes;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageBucket()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lo/asGzippedBytes;->storageBucket:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lo/asGzippedBytes;->applicationId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/asGzippedBytes;->apiKey:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/asGzippedBytes;->databaseUrl:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/asGzippedBytes;->gaTrackingId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/asGzippedBytes;->gcmSenderId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/asGzippedBytes;->storageBucket:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/asGzippedBytes;->projectId:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 15002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 15003
    new-instance v0, Lo/getPaymentData$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getPaymentData$extraCallback;-><init>(Ljava/lang/Object;B)V

    .line 248
    iget-object v1, p0, Lo/asGzippedBytes;->applicationId:Ljava/lang/String;

    const-string v2, "applicationId"

    .line 249
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/asGzippedBytes;->apiKey:Ljava/lang/String;

    const-string v2, "apiKey"

    .line 250
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/asGzippedBytes;->databaseUrl:Ljava/lang/String;

    const-string v2, "databaseUrl"

    .line 251
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/asGzippedBytes;->gcmSenderId:Ljava/lang/String;

    const-string v2, "gcmSenderId"

    .line 252
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/asGzippedBytes;->storageBucket:Ljava/lang/String;

    const-string/jumbo v2, "storageBucket"

    .line 253
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/asGzippedBytes;->projectId:Ljava/lang/String;

    const-string v2, "projectId"

    .line 254
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
