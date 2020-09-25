.class public final enum Lo/writeInt64$onPostMessage$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeInt64$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeInt64$onPostMessage$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeInt64$onPostMessage$extraCallback;

.field private static final synthetic asBinder:[Lo/writeInt64$onPostMessage$extraCallback;

.field public static final enum extraCallback:Lo/writeInt64$onPostMessage$extraCallback;

.field public static final enum onMessageChannelReady:Lo/writeInt64$onPostMessage$extraCallback;

.field private static enum onNavigationEvent:Lo/writeInt64$onPostMessage$extraCallback;

.field public static final enum onPostMessage:Lo/writeInt64$onPostMessage$extraCallback;

.field private static enum onRelationshipValidationResult:Lo/writeInt64$onPostMessage$extraCallback;

.field private static enum onTransact:Lo/writeInt64$onPostMessage$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 381
    new-instance v0, Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v1, 0x0

    const-string v2, "SET_TO_SERVER_VALUE"

    invoke-direct {v0, v2, v1}, Lo/writeInt64$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeInt64$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$extraCallback;

    .line 382
    new-instance v0, Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v2, 0x1

    const-string v3, "INCREMENT"

    invoke-direct {v0, v3, v2}, Lo/writeInt64$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeInt64$onPostMessage$extraCallback;->extraCallback:Lo/writeInt64$onPostMessage$extraCallback;

    .line 383
    new-instance v0, Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v3, 0x2

    const-string v4, "MAXIMUM"

    invoke-direct {v0, v4, v3}, Lo/writeInt64$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeInt64$onPostMessage$extraCallback;->onNavigationEvent:Lo/writeInt64$onPostMessage$extraCallback;

    .line 384
    new-instance v0, Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v4, 0x3

    const-string v5, "MINIMUM"

    invoke-direct {v0, v5, v4}, Lo/writeInt64$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeInt64$onPostMessage$extraCallback;->onRelationshipValidationResult:Lo/writeInt64$onPostMessage$extraCallback;

    .line 385
    new-instance v0, Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v5, 0x4

    const-string v6, "APPEND_MISSING_ELEMENTS"

    invoke-direct {v0, v6, v5}, Lo/writeInt64$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeInt64$onPostMessage$extraCallback;->onPostMessage:Lo/writeInt64$onPostMessage$extraCallback;

    .line 386
    new-instance v0, Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v6, 0x5

    const-string v7, "REMOVE_ALL_FROM_ARRAY"

    invoke-direct {v0, v7, v6}, Lo/writeInt64$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeInt64$onPostMessage$extraCallback;->onMessageChannelReady:Lo/writeInt64$onPostMessage$extraCallback;

    .line 387
    new-instance v0, Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v7, 0x6

    const-string v8, "TRANSFORMTYPE_NOT_SET"

    invoke-direct {v0, v8, v7}, Lo/writeInt64$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/writeInt64$onPostMessage$extraCallback;->onTransact:Lo/writeInt64$onPostMessage$extraCallback;

    const/4 v8, 0x7

    new-array v8, v8, [Lo/writeInt64$onPostMessage$extraCallback;

    .line 380
    sget-object v9, Lo/writeInt64$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$extraCallback;

    aput-object v9, v8, v1

    sget-object v1, Lo/writeInt64$onPostMessage$extraCallback;->extraCallback:Lo/writeInt64$onPostMessage$extraCallback;

    aput-object v1, v8, v2

    sget-object v1, Lo/writeInt64$onPostMessage$extraCallback;->onNavigationEvent:Lo/writeInt64$onPostMessage$extraCallback;

    aput-object v1, v8, v3

    sget-object v1, Lo/writeInt64$onPostMessage$extraCallback;->onRelationshipValidationResult:Lo/writeInt64$onPostMessage$extraCallback;

    aput-object v1, v8, v4

    sget-object v1, Lo/writeInt64$onPostMessage$extraCallback;->onPostMessage:Lo/writeInt64$onPostMessage$extraCallback;

    aput-object v1, v8, v5

    sget-object v1, Lo/writeInt64$onPostMessage$extraCallback;->onMessageChannelReady:Lo/writeInt64$onPostMessage$extraCallback;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lo/writeInt64$onPostMessage$extraCallback;->asBinder:[Lo/writeInt64$onPostMessage$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static onNavigationEvent(I)Lo/writeInt64$onPostMessage$extraCallback;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 407
    :pswitch_0
    sget-object p0, Lo/writeInt64$onPostMessage$extraCallback;->onMessageChannelReady:Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0

    .line 406
    :pswitch_1
    sget-object p0, Lo/writeInt64$onPostMessage$extraCallback;->onPostMessage:Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0

    .line 405
    :pswitch_2
    sget-object p0, Lo/writeInt64$onPostMessage$extraCallback;->onRelationshipValidationResult:Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0

    .line 404
    :pswitch_3
    sget-object p0, Lo/writeInt64$onPostMessage$extraCallback;->onNavigationEvent:Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0

    .line 403
    :pswitch_4
    sget-object p0, Lo/writeInt64$onPostMessage$extraCallback;->extraCallback:Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0

    .line 402
    :pswitch_5
    sget-object p0, Lo/writeInt64$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0

    .line 408
    :cond_0
    sget-object p0, Lo/writeInt64$onPostMessage$extraCallback;->onTransact:Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeInt64$onPostMessage$extraCallback;
    .locals 1

    .line 380
    const-class v0, Lo/writeInt64$onPostMessage$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeInt64$onPostMessage$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/writeInt64$onPostMessage$extraCallback;
    .locals 1

    .line 380
    sget-object v0, Lo/writeInt64$onPostMessage$extraCallback;->asBinder:[Lo/writeInt64$onPostMessage$extraCallback;

    invoke-virtual {v0}, [Lo/writeInt64$onPostMessage$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeInt64$onPostMessage$extraCallback;

    return-object v0
.end method
