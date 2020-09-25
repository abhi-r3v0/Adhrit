.class public final Lo/setAnchorView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private static final extraCallback:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/setAnchorView$3;

    invoke-direct {v0}, Lo/setAnchorView$3;-><init>()V

    sput-object v0, Lo/setAnchorView;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v0, Lo/setAnchorView$5;

    invoke-direct {v0}, Lo/setAnchorView$5;-><init>()V

    sput-object v0, Lo/setAnchorView;->extraCallback:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static ICustomTabsCallback()Ljava/util/concurrent/Executor;
    .locals 1

    .line 41
    sget-object v0, Lo/setAnchorView;->extraCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static onPostMessage()Ljava/util/concurrent/Executor;
    .locals 1

    .line 36
    sget-object v0, Lo/setAnchorView;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method
