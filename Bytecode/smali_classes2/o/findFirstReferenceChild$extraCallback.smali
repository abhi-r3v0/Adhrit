.class public final Lo/findFirstReferenceChild$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findFirstReferenceChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionFragment$Companion;",
        "",
        "()V",
        "TAG",
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
.field private static final onNavigationEvent:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private final onMessageChannelReady:Lo/onVerificationFailed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "MergeSliceTaskHandler"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findFirstReferenceChild$extraCallback;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/findFirstReferenceChild$extraCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    return-void
.end method

.method private static onNavigationEvent(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .line 7000
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lo/findFirstReferenceChild$extraCallback;->onNavigationEvent(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lo/getFactory;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to delete directory: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return-void

    :cond_3
    new-instance p1, Lo/getFactory;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x15

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to move file: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Lo/getFactory;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x33

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "File clashing with existing file from other slice: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/lambda$of$0;)V
    .locals 11

    .line 2000
    iget-object v0, p0, Lo/findFirstReferenceChild$extraCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v2, p1, Lo/lambda$of$0;->onNavigationEvent:I

    iget-wide v3, p1, Lo/lambda$of$0;->onPostMessage:J

    iget-object v5, p1, Lo/lambda$of$0;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/findFirstReferenceChild$extraCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v4, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, p1, Lo/lambda$of$0;->onNavigationEvent:I

    iget-wide v6, p1, Lo/lambda$of$0;->onPostMessage:J

    .line 3000
    new-instance v8, Ljava/io/File;

    invoke-virtual {v1, v4, v5, v6, v7}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    const-string v4, "_packs"

    invoke-direct {v8, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {v0, v8}, Lo/findFirstReferenceChild$extraCallback;->onNavigationEvent(Ljava/io/File;Ljava/io/File;)V

    :try_start_0
    iget-object v0, p0, Lo/findFirstReferenceChild$extraCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, p1, Lo/lambda$of$0;->onNavigationEvent:I

    iget-wide v6, p1, Lo/lambda$of$0;->onPostMessage:J

    invoke-virtual {v0, v1, v5, v6, v7}, Lo/onVerificationFailed;->extraCallback(Ljava/lang/String;IJ)I

    move-result v0

    iget-object v1, p0, Lo/findFirstReferenceChild$extraCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v5, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v6, p1, Lo/lambda$of$0;->onNavigationEvent:I

    iget-wide v7, p1, Lo/lambda$of$0;->onPostMessage:J

    add-int/2addr v0, v3

    .line 5000
    new-instance v9, Ljava/io/File;

    .line 6000
    new-instance v10, Ljava/io/File;

    invoke-virtual {v1, v5, v6, v7, v8}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-direct {v10, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "merge.tmp"

    .line 5000
    invoke-direct {v9, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4000
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v4, "numberOfMerges"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2000
    sget-object v1, Lo/findFirstReferenceChild$extraCallback;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Writing merge checkpoint failed with %s."

    invoke-virtual {v1, v2, v3}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lo/getFactory;

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    const-string v2, "Writing merge checkpoint failed."

    invoke-direct {v1, v2, v0, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :cond_1
    new-instance v0, Lo/getFactory;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lo/lambda$of$0;->onMessageChannelReady:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find verified files for slice %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
