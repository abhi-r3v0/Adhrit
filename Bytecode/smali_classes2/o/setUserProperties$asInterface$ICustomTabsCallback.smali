.class public final enum Lo/setUserProperties$asInterface$ICustomTabsCallback;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$asInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$asInterface$ICustomTabsCallback;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$asInterface$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum extraCallback:Lo/setUserProperties$asInterface$ICustomTabsCallback;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$asInterface$ICustomTabsCallback;

.field private static final enum onPostMessage:Lo/setUserProperties$asInterface$ICustomTabsCallback;

.field private static final synthetic onTransact:[Lo/setUserProperties$asInterface$ICustomTabsCallback;


# instance fields
.field private final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$asInterface$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onMessageChannelReady:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    new-instance v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "AUTO_TIME_OFF"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$asInterface$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->extraCallback:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    new-instance v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "AUTO_TIME_ON"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$asInterface$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onPostMessage:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setUserProperties$asInterface$ICustomTabsCallback;

    sget-object v5, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onMessageChannelReady:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/setUserProperties$asInterface$ICustomTabsCallback;->extraCallback:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onTransact:[Lo/setUserProperties$asInterface$ICustomTabsCallback;

    new-instance v0, Lo/sendMessage;

    invoke-direct {v0}, Lo/sendMessage;-><init>()V

    sput-object v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/setHierarchy;

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

    iput p3, p0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method

.method public static extraCallback(I)Lo/setUserProperties$asInterface$ICustomTabsCallback;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onPostMessage:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    return-object p0

    :cond_1
    sget-object p0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->extraCallback:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    return-object p0

    :cond_2
    sget-object p0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onMessageChannelReady:Lo/setUserProperties$asInterface$ICustomTabsCallback;

    return-object p0
.end method

.method public static onPostMessage()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$asInterface$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/setUserProperties$asInterface$ICustomTabsCallback;
    .locals 1

    sget-object v0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onTransact:[Lo/setUserProperties$asInterface$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/setUserProperties$asInterface$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$asInterface$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$asInterface$ICustomTabsCallback;->onNavigationEvent:I

    return v0
.end method
