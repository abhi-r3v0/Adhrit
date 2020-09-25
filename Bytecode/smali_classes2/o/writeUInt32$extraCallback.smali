.class public final enum Lo/writeUInt32$extraCallback;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/getEventLogSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeUInt32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeUInt32$extraCallback;",
        ">;",
        "Lo/getEventLogSize$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeUInt32$extraCallback;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/writeUInt32$extraCallback;

.field public static final enum extraCallback:Lo/writeUInt32$extraCallback;

.field public static final enum onMessageChannelReady:Lo/writeUInt32$extraCallback;

.field public static final enum onNavigationEvent:Lo/writeUInt32$extraCallback;

.field public static final enum onPostMessage:Lo/writeUInt32$extraCallback;

.field public static final enum onRelationshipValidationResult:Lo/writeUInt32$extraCallback;


# instance fields
.field private final asBinder:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 38
    new-instance v0, Lo/writeUInt32$extraCallback;

    const/4 v1, 0x0

    const-string v2, "NO_CHANGE"

    invoke-direct {v0, v2, v1, v1}, Lo/writeUInt32$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeUInt32$extraCallback;->onNavigationEvent:Lo/writeUInt32$extraCallback;

    .line 46
    new-instance v0, Lo/writeUInt32$extraCallback;

    const/4 v2, 0x1

    const-string v3, "ADD"

    invoke-direct {v0, v3, v2, v2}, Lo/writeUInt32$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeUInt32$extraCallback;->ICustomTabsCallback:Lo/writeUInt32$extraCallback;

    .line 54
    new-instance v0, Lo/writeUInt32$extraCallback;

    const/4 v3, 0x2

    const-string v4, "REMOVE"

    invoke-direct {v0, v4, v3, v3}, Lo/writeUInt32$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeUInt32$extraCallback;->onMessageChannelReady:Lo/writeUInt32$extraCallback;

    .line 67
    new-instance v0, Lo/writeUInt32$extraCallback;

    const/4 v4, 0x3

    const-string v5, "CURRENT"

    invoke-direct {v0, v5, v4, v4}, Lo/writeUInt32$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeUInt32$extraCallback;->onPostMessage:Lo/writeUInt32$extraCallback;

    .line 78
    new-instance v0, Lo/writeUInt32$extraCallback;

    const/4 v5, 0x4

    const-string v6, "RESET"

    invoke-direct {v0, v6, v5, v5}, Lo/writeUInt32$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeUInt32$extraCallback;->extraCallback:Lo/writeUInt32$extraCallback;

    .line 79
    new-instance v0, Lo/writeUInt32$extraCallback;

    const/4 v6, 0x5

    const-string v7, "UNRECOGNIZED"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lo/writeUInt32$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeUInt32$extraCallback;->onRelationshipValidationResult:Lo/writeUInt32$extraCallback;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/writeUInt32$extraCallback;

    .line 29
    sget-object v8, Lo/writeUInt32$extraCallback;->onNavigationEvent:Lo/writeUInt32$extraCallback;

    aput-object v8, v7, v1

    sget-object v1, Lo/writeUInt32$extraCallback;->ICustomTabsCallback:Lo/writeUInt32$extraCallback;

    aput-object v1, v7, v2

    sget-object v1, Lo/writeUInt32$extraCallback;->onMessageChannelReady:Lo/writeUInt32$extraCallback;

    aput-object v1, v7, v3

    sget-object v1, Lo/writeUInt32$extraCallback;->onPostMessage:Lo/writeUInt32$extraCallback;

    aput-object v1, v7, v4

    sget-object v1, Lo/writeUInt32$extraCallback;->extraCallback:Lo/writeUInt32$extraCallback;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/writeUInt32$extraCallback;->ICustomTabsCallback$Stub:[Lo/writeUInt32$extraCallback;

    .line 167
    new-instance v0, Lo/writeUInt32$extraCallback$1;

    invoke-direct {v0}, Lo/writeUInt32$extraCallback$1;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    iput p3, p0, Lo/writeUInt32$extraCallback;->asBinder:I

    return-void
.end method

.method public static onNavigationEvent(I)Lo/writeUInt32$extraCallback;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    sget-object p0, Lo/writeUInt32$extraCallback;->extraCallback:Lo/writeUInt32$extraCallback;

    return-object p0

    .line 156
    :cond_1
    sget-object p0, Lo/writeUInt32$extraCallback;->onPostMessage:Lo/writeUInt32$extraCallback;

    return-object p0

    .line 155
    :cond_2
    sget-object p0, Lo/writeUInt32$extraCallback;->onMessageChannelReady:Lo/writeUInt32$extraCallback;

    return-object p0

    .line 154
    :cond_3
    sget-object p0, Lo/writeUInt32$extraCallback;->ICustomTabsCallback:Lo/writeUInt32$extraCallback;

    return-object p0

    .line 153
    :cond_4
    sget-object p0, Lo/writeUInt32$extraCallback;->onNavigationEvent:Lo/writeUInt32$extraCallback;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeUInt32$extraCallback;
    .locals 1

    .line 29
    const-class v0, Lo/writeUInt32$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeUInt32$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/writeUInt32$extraCallback;
    .locals 1

    .line 29
    sget-object v0, Lo/writeUInt32$extraCallback;->ICustomTabsCallback$Stub:[Lo/writeUInt32$extraCallback;

    invoke-virtual {v0}, [Lo/writeUInt32$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeUInt32$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 134
    sget-object v0, Lo/writeUInt32$extraCallback;->onRelationshipValidationResult:Lo/writeUInt32$extraCallback;

    if-eq p0, v0, :cond_0

    .line 138
    iget v0, p0, Lo/writeUInt32$extraCallback;->asBinder:I

    return v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
