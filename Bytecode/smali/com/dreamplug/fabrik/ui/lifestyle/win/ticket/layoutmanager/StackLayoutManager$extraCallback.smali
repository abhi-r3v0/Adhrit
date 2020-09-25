.class public final enum Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;",
        "",
        "(Ljava/lang/String;I)V",
        "LEFT_TO_RIGHT",
        "RIGHT_TO_LEFT",
        "TOP_TO_BOTTOM",
        "BOTTOM_TO_TOP",
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
.field public static final enum ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

.field private static final synthetic extraCallback:[Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

.field public static final enum onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

.field public static final enum onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

.field public static final enum onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    const/4 v2, 0x0

    const-string v3, "LEFT_TO_RIGHT"

    invoke-direct {v1, v3, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    const/4 v2, 0x1

    const-string v3, "RIGHT_TO_LEFT"

    invoke-direct {v1, v3, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    const/4 v2, 0x2

    const-string v3, "TOP_TO_BOTTOM"

    invoke-direct {v1, v3, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    const/4 v2, 0x3

    const-string v3, "BOTTOM_TO_TOP"

    invoke-direct {v1, v3, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->extraCallback:[Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;
    .locals 1

    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    return-object p0
.end method

.method public static values()[Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;
    .locals 1

    sget-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->extraCallback:[Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v0}, [Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    return-object v0
.end method
