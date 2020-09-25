.class public final Lo/findTrackedQuery;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H\u0000\u001a\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H\u0000\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\"\u0016\u0010\u0008\u001a\u00020\t8\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\t8\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\u0003\"\u000e\u0010\r\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0010\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0003\"\u0016\u0010\u0012\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003\"\u000e\u0010\u0014\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "COMPLETING_ALREADY",
        "Lkotlinx/coroutines/internal/Symbol;",
        "COMPLETING_ALREADY$annotations",
        "()V",
        "COMPLETING_RETRY",
        "COMPLETING_RETRY$annotations",
        "COMPLETING_WAITING_CHILDREN",
        "COMPLETING_WAITING_CHILDREN$annotations",
        "EMPTY_ACTIVE",
        "Lkotlinx/coroutines/Empty;",
        "EMPTY_ACTIVE$annotations",
        "EMPTY_NEW",
        "EMPTY_NEW$annotations",
        "FALSE",
        "",
        "RETRY",
        "SEALED",
        "SEALED$annotations",
        "TOO_LATE_TO_CANCEL",
        "TOO_LATE_TO_CANCEL$annotations",
        "TRUE",
        "boxIncomplete",
        "",
        "unboxState",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/AppCompatDrawableManager;

.field private static final asInterface:Lo/prunesAnything;

.field private static final extraCallback:Lo/AppCompatDrawableManager;

.field public static final onMessageChannelReady:Lo/AppCompatDrawableManager;

.field private static final onNavigationEvent:Lo/AppCompatDrawableManager;

.field private static final onPostMessage:Lo/AppCompatDrawableManager;

.field private static final onTransact:Lo/prunesAnything;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1287
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findTrackedQuery;->extraCallback:Lo/AppCompatDrawableManager;

    .line 1290
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findTrackedQuery;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    .line 1292
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findTrackedQuery;->ICustomTabsCallback:Lo/AppCompatDrawableManager;

    .line 1294
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findTrackedQuery;->onNavigationEvent:Lo/AppCompatDrawableManager;

    .line 1301
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findTrackedQuery;->onPostMessage:Lo/AppCompatDrawableManager;

    .line 1303
    new-instance v0, Lo/prunesAnything;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/prunesAnything;-><init>(Z)V

    sput-object v0, Lo/findTrackedQuery;->asInterface:Lo/prunesAnything;

    .line 1305
    new-instance v0, Lo/prunesAnything;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/prunesAnything;-><init>(Z)V

    sput-object v0, Lo/findTrackedQuery;->onTransact:Lo/prunesAnything;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()Lo/AppCompatDrawableManager;
    .locals 1

    .line 1
    sget-object v0, Lo/findTrackedQuery;->extraCallback:Lo/AppCompatDrawableManager;

    return-object v0
.end method

.method public static final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1282
    instance-of v0, p0, Lo/prune;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lo/prune;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/prune;->extraCallback:Lo/pruneAll;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final synthetic extraCallback()Lo/prunesAnything;
    .locals 1

    .line 1
    sget-object v0, Lo/findTrackedQuery;->onTransact:Lo/prunesAnything;

    return-object v0
.end method

.method public static final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1281
    instance-of v0, p0, Lo/pruneAll;

    if-eqz v0, :cond_0

    new-instance v0, Lo/prune;

    check-cast p0, Lo/pruneAll;

    invoke-direct {v0, p0}, Lo/prune;-><init>(Lo/pruneAll;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic onMessageChannelReady()Lo/AppCompatDrawableManager;
    .locals 1

    .line 1
    sget-object v0, Lo/findTrackedQuery;->ICustomTabsCallback:Lo/AppCompatDrawableManager;

    return-object v0
.end method

.method public static final synthetic onNavigationEvent()Lo/AppCompatDrawableManager;
    .locals 1

    .line 1
    sget-object v0, Lo/findTrackedQuery;->onPostMessage:Lo/AppCompatDrawableManager;

    return-object v0
.end method

.method public static final synthetic onPostMessage()Lo/AppCompatDrawableManager;
    .locals 1

    .line 1
    sget-object v0, Lo/findTrackedQuery;->onNavigationEvent:Lo/AppCompatDrawableManager;

    return-object v0
.end method

.method public static final synthetic onTransact()Lo/prunesAnything;
    .locals 1

    .line 1
    sget-object v0, Lo/findTrackedQuery;->asInterface:Lo/prunesAnything;

    return-object v0
.end method
