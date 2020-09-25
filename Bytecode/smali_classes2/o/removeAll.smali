.class public final Lo/removeAll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeAll$ICustomTabsCallback;,
        Lo/removeAll$extraCallback;
    }
.end annotation


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/removeAll;->arg$1:Ljava/lang/String;

    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Lo/removeAll$extraCallback;->delete(Ljava/io/File;)V

    return-void

    .line 37
    :cond_0
    invoke-static {p0}, Lo/removeAll$ICustomTabsCallback;->delete(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/removeAll;->arg$1:Ljava/lang/String;

    check-cast p1, Lo/getOrCreateBodyBuilder;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$unsubscribeFromTopic$2$FirebaseMessaging(Ljava/lang/String;Lo/getOrCreateBodyBuilder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
