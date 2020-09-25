.class public final Lo/asGzippedBytes$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/asGzippedBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private databaseUrl:Ljava/lang/String;

.field private gaTrackingId:Ljava/lang/String;

.field private gcmSenderId:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private storageBucket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/asGzippedBytes;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lo/asGzippedBytes;->access$000(Lo/asGzippedBytes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/asGzippedBytes$onNavigationEvent;->applicationId:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lo/asGzippedBytes;->access$100(Lo/asGzippedBytes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/asGzippedBytes$onNavigationEvent;->apiKey:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lo/asGzippedBytes;->access$200(Lo/asGzippedBytes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/asGzippedBytes$onNavigationEvent;->databaseUrl:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lo/asGzippedBytes;->access$300(Lo/asGzippedBytes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/asGzippedBytes$onNavigationEvent;->gaTrackingId:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lo/asGzippedBytes;->access$400(Lo/asGzippedBytes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/asGzippedBytes$onNavigationEvent;->gcmSenderId:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lo/asGzippedBytes;->access$500(Lo/asGzippedBytes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/asGzippedBytes$onNavigationEvent;->storageBucket:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lo/asGzippedBytes;->access$600(Lo/asGzippedBytes;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->projectId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lo/asGzippedBytes;
    .locals 10

    .line 126
    new-instance v9, Lo/asGzippedBytes;

    iget-object v1, p0, Lo/asGzippedBytes$onNavigationEvent;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lo/asGzippedBytes$onNavigationEvent;->apiKey:Ljava/lang/String;

    iget-object v3, p0, Lo/asGzippedBytes$onNavigationEvent;->databaseUrl:Ljava/lang/String;

    iget-object v4, p0, Lo/asGzippedBytes$onNavigationEvent;->gaTrackingId:Ljava/lang/String;

    iget-object v5, p0, Lo/asGzippedBytes$onNavigationEvent;->gcmSenderId:Ljava/lang/String;

    iget-object v6, p0, Lo/asGzippedBytes$onNavigationEvent;->storageBucket:Ljava/lang/String;

    iget-object v7, p0, Lo/asGzippedBytes$onNavigationEvent;->projectId:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/asGzippedBytes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/asGzippedBytes$3;)V

    return-object v9
.end method

.method public final setApiKey(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;
    .locals 1

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->apiKey:Ljava/lang/String;

    return-object p0

    .line 1008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ApiKey must be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setApplicationId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;
    .locals 1

    .line 2007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->applicationId:Ljava/lang/String;

    return-object p0

    .line 2008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ApplicationId must be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDatabaseUrl(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;
    .locals 0

    .line 93
    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->databaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setGaTrackingId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;
    .locals 0

    .line 102
    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->gaTrackingId:Ljava/lang/String;

    return-object p0
.end method

.method public final setGcmSenderId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;
    .locals 0

    .line 108
    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->gcmSenderId:Ljava/lang/String;

    return-object p0
.end method

.method public final setProjectId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;
    .locals 0

    .line 120
    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->projectId:Ljava/lang/String;

    return-object p0
.end method

.method public final setStorageBucket(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;
    .locals 0

    .line 114
    iput-object p1, p0, Lo/asGzippedBytes$onNavigationEvent;->storageBucket:Ljava/lang/String;

    return-object p0
.end method
