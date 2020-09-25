.class public final synthetic Lo/getCompleteChildren;
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
.field public static final synthetic onNavigationEvent:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lo/setDebugLogComponents;->values()[Lo/setDebugLogComponents;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getCompleteChildren;->onNavigationEvent:[I

    sget-object v1, Lo/setDebugLogComponents;->onMessageChannelReady:Lo/setDebugLogComponents;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/getCompleteChildren;->onNavigationEvent:[I

    sget-object v1, Lo/setDebugLogComponents;->ICustomTabsCallback:Lo/setDebugLogComponents;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
