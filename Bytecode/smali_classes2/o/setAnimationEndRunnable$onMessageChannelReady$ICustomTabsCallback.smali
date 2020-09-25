.class public final enum Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAnimationEndRunnable$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

.field private static final extraCallback:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum onMessageChannelReady:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

.field private static final enum onPostMessage:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

.field private static final synthetic onTransact:[Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;


# instance fields
.field private final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    new-instance v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "ON"

    invoke-direct {v0, v3, v2, v2}, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    new-instance v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "OFF"

    invoke-direct {v0, v4, v3, v3}, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    sget-object v5, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onTransact:[Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    new-instance v0, Lo/setReplaceChar;

    invoke-direct {v0}, Lo/setReplaceChar;-><init>()V

    sput-object v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/setHierarchy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method

.method public static extraCallback()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/setHierarchy;

    return-object v0
.end method

.method public static onNavigationEvent(I)Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    return-object p0

    :cond_1
    sget-object p0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    return-object p0

    :cond_2
    sget-object p0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;
    .locals 1

    sget-object v0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onTransact:[Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setAnimationEndRunnable$onMessageChannelReady$ICustomTabsCallback;->onNavigationEvent:I

    return v0
.end method
