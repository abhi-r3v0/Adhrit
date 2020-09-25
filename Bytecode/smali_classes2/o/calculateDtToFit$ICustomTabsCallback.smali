.class public final Lo/calculateDtToFit$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateDtToFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/firebase/FirebaseWinDBViewModel$Companion;",
        "",
        "()V",
        "PRESENCE_COLLECTION",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private final onNavigationEvent:Lo/onVerificationFailed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "VerifySliceTaskHandler"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/calculateDtToFit$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/calculateDtToFit$ICustomTabsCallback;->onNavigationEvent:Lo/onVerificationFailed;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/setInstantiation;)V
    .locals 12

    .line 2000
    iget-object v0, p0, Lo/calculateDtToFit$ICustomTabsCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v2, p1, Lo/setInstantiation;->onPostMessage:I

    iget-wide v3, p1, Lo/setInstantiation;->onMessageChannelReady:J

    iget-object v5, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 3000
    :try_start_0
    iget-object v1, p0, Lo/calculateDtToFit$ICustomTabsCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v4, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, p1, Lo/setInstantiation;->onPostMessage:I

    iget-wide v6, p1, Lo/setInstantiation;->onMessageChannelReady:J

    iget-object v8, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    .line 4000
    new-instance v9, Ljava/io/File;

    invoke-virtual {v1, v4, v5, v6, v7}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-direct {v9, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3000
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, v9}, Lo/extraCallback$asBinder;->extraCallback(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v1}, Lo/extraCallback;->onMessageChannelReady(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p1, Lo/setInstantiation;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lo/calculateDtToFit$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Verification of slice %s of pack %s successful."

    invoke-virtual {v1, v5, v4}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2000
    iget-object v6, p0, Lo/calculateDtToFit$ICustomTabsCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v7, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v8, p1, Lo/setInstantiation;->onPostMessage:I

    iget-wide v9, p1, Lo/setInstantiation;->onMessageChannelReady:J

    iget-object v11, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lo/getFactory;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Failed to move slice %s after verification."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3000
    :cond_2
    new-instance v0, Lo/getFactory;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Verification failed for slice %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lo/getFactory;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Could not digest file during verification for slice %s."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v1, v2, v0, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lo/getFactory;

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    const-string v2, "SHA256 algorithm not supported."

    invoke-direct {v1, v2, v0, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :cond_3
    :try_start_2
    new-instance v0, Lo/getFactory;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Cannot find metadata files for slice %s."

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lo/getFactory;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Could not reconstruct slice archive during verification for slice %s."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v1, v2, v0, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 2000
    :cond_4
    new-instance v0, Lo/getFactory;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find unverified files for slice %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
