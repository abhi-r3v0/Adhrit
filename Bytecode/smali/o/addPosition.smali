.class public final synthetic Lo/addPosition;
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
.field public static final synthetic ICustomTabsCallback:[I

.field private static synthetic ICustomTabsCallback$Stub:[I

.field public static final synthetic extraCallback:[I

.field public static final synthetic onMessageChannelReady:[I

.field public static final synthetic onNavigationEvent:[I

.field public static final synthetic onPostMessage:[I

.field private static synthetic onRelationshipValidationResult:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lo/RecyclerView$LayoutParams$extraCallback;->values()[Lo/RecyclerView$LayoutParams$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/addPosition;->extraCallback:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/addPosition;->extraCallback:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lo/addPosition;->extraCallback:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lo/addPosition;->extraCallback:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lo/RecyclerView$LayoutParams$extraCallback;->values()[Lo/RecyclerView$LayoutParams$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/addPosition;->onPostMessage:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/addPosition;->onPostMessage:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/addPosition;->onPostMessage:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/addPosition;->onPostMessage:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lo/RecyclerView$LayoutParams$extraCallback;->values()[Lo/RecyclerView$LayoutParams$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/addPosition;->onRelationshipValidationResult:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/addPosition;->onRelationshipValidationResult:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/addPosition;->onRelationshipValidationResult:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/addPosition;->onRelationshipValidationResult:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lo/RecyclerView$LayoutParams$extraCallback;->values()[Lo/RecyclerView$LayoutParams$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/addPosition;->ICustomTabsCallback$Stub:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/addPosition;->ICustomTabsCallback$Stub:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/addPosition;->ICustomTabsCallback$Stub:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/addPosition;->ICustomTabsCallback$Stub:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lo/RecyclerView$LayoutParams$extraCallback;->values()[Lo/RecyclerView$LayoutParams$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/addPosition;->onMessageChannelReady:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/addPosition;->onMessageChannelReady:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/addPosition;->onMessageChannelReady:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/addPosition;->onMessageChannelReady:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lo/RecyclerView$LayoutParams$extraCallback;->values()[Lo/RecyclerView$LayoutParams$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/addPosition;->onNavigationEvent:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/addPosition;->onNavigationEvent:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/addPosition;->onNavigationEvent:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/addPosition;->onNavigationEvent:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lo/RecyclerView$LayoutParams$ICustomTabsCallback;->values()[Lo/RecyclerView$LayoutParams$ICustomTabsCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/addPosition;->ICustomTabsCallback:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$ICustomTabsCallback;->extraCallback:Lo/RecyclerView$LayoutParams$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/addPosition;->ICustomTabsCallback:[I

    sget-object v1, Lo/RecyclerView$LayoutParams$ICustomTabsCallback;->ICustomTabsCallback:Lo/RecyclerView$LayoutParams$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
