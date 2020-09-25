.class public final enum Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/getEventLogSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;",
        ">;",
        "Lo/getEventLogSize$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

.field private static enum asBinder:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;


# instance fields
.field final asInterface:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 3175
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "OPERATOR_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 3183
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "IS_NAN"

    invoke-direct {v0, v4, v2, v3}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 3191
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "IS_NULL"

    invoke-direct {v0, v5, v3, v4}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 3202
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "IS_NOT_NAN"

    invoke-direct {v0, v6, v4, v5}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 3213
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v6, 0x5

    const-string v7, "IS_NOT_NULL"

    invoke-direct {v0, v7, v5, v6}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 3214
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 3166
    sget-object v8, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    aput-object v8, v7, v1

    sget-object v1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    aput-object v1, v7, v2

    sget-object v1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    aput-object v1, v7, v3

    sget-object v1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    aput-object v1, v7, v4

    sget-object v1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:[Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 3300
    new-instance v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback$5;

    invoke-direct {v0}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback$5;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3325
    iput p3, p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->asInterface:I

    return-void
.end method

.method public static onMessageChannelReady(I)Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3290
    :cond_0
    sget-object p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    return-object p0

    .line 3289
    :cond_1
    sget-object p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    return-object p0

    .line 3288
    :cond_2
    sget-object p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    return-object p0

    .line 3287
    :cond_3
    sget-object p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    return-object p0

    .line 3286
    :cond_4
    sget-object p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;
    .locals 1

    .line 3166
    const-class v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;
    .locals 1

    .line 3166
    sget-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:[Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 3267
    sget-object v0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    if-eq p0, v0, :cond_0

    .line 3271
    iget v0, p0, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->asInterface:I

    return v0

    .line 3268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
