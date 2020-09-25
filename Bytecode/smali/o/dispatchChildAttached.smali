.class public final synthetic Lo/dispatchChildAttached;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic extraCallback:[I

.field public static final synthetic onMessageChannelReady:[I

.field public static final synthetic onNavigationEvent:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->values()[Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/dispatchChildAttached;->extraCallback:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/dispatchChildAttached;->extraCallback:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->values()[Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/dispatchChildAttached;->onMessageChannelReady:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/dispatchChildAttached;->onMessageChannelReady:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/dispatchChildAttached;->onMessageChannelReady:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lo/dispatchChildAttached;->onMessageChannelReady:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->values()[Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/dispatchChildAttached;->onNavigationEvent:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/dispatchChildAttached;->onNavigationEvent:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/dispatchChildAttached;->onNavigationEvent:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/dispatchChildAttached;->onNavigationEvent:[I

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
