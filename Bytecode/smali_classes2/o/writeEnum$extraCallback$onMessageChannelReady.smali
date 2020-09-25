.class public final enum Lo/writeEnum$extraCallback$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/getEventLogSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeEnum$extraCallback$onMessageChannelReady;",
        ">;",
        "Lo/getEventLogSize$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum ICustomTabsCallback$Stub:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field private static final synthetic ICustomTabsCallback$Stub$Proxy:[Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum ICustomTabsService:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum asBinder:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum asInterface:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum extraCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field private static enum getInterfaceDescriptor:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum onRelationshipValidationResult:Lo/writeEnum$extraCallback$onMessageChannelReady;

.field public static final enum onTransact:Lo/writeEnum$extraCallback$onMessageChannelReady;


# instance fields
.field final newSession:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 2231
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "OPERATOR_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->getInterfaceDescriptor:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2241
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "LESS_THAN"

    invoke-direct {v0, v3, v2, v2}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->extraCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2251
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "LESS_THAN_OR_EQUAL"

    invoke-direct {v0, v4, v3, v3}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onNavigationEvent:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2261
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "GREATER_THAN"

    invoke-direct {v0, v5, v4, v4}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onPostMessage:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2271
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "GREATER_THAN_OR_EQUAL"

    invoke-direct {v0, v6, v5, v5}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2279
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "EQUAL"

    invoke-direct {v0, v7, v6, v6}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onMessageChannelReady:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2290
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "NOT_EQUAL"

    invoke-direct {v0, v8, v7, v7}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2298
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/4 v8, 0x7

    const-string v9, "ARRAY_CONTAINS"

    invoke-direct {v0, v9, v8, v8}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onRelationshipValidationResult:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2309
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/16 v9, 0x8

    const-string v10, "IN"

    invoke-direct {v0, v10, v9, v9}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onTransact:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2321
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/16 v10, 0x9

    const-string v11, "ARRAY_CONTAINS_ANY"

    invoke-direct {v0, v11, v10, v10}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->asInterface:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2334
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/16 v11, 0xa

    const-string v12, "NOT_IN"

    invoke-direct {v0, v12, v11, v11}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->asBinder:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2335
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/16 v12, 0xb

    const-string v13, "UNRECOGNIZED"

    const/4 v14, -0x1

    invoke-direct {v0, v13, v12, v14}, Lo/writeEnum$extraCallback$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsService:Lo/writeEnum$extraCallback$onMessageChannelReady;

    const/16 v13, 0xc

    new-array v13, v13, [Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2222
    sget-object v14, Lo/writeEnum$extraCallback$onMessageChannelReady;->getInterfaceDescriptor:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v14, v13, v1

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->extraCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v2

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onNavigationEvent:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v3

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onPostMessage:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v4

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v5

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onMessageChannelReady:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v6

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v7

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onRelationshipValidationResult:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v8

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onTransact:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v9

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->asInterface:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v10

    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->asBinder:Lo/writeEnum$extraCallback$onMessageChannelReady;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:[Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 2492
    new-instance v0, Lo/writeEnum$extraCallback$onMessageChannelReady$3;

    invoke-direct {v0}, Lo/writeEnum$extraCallback$onMessageChannelReady$3;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2516
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2517
    iput p3, p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->newSession:I

    return-void
.end method

.method public static onPostMessage(I)Lo/writeEnum$extraCallback$onMessageChannelReady;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2482
    :pswitch_0
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->asBinder:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2481
    :pswitch_1
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->asInterface:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2480
    :pswitch_2
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onTransact:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2479
    :pswitch_3
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onRelationshipValidationResult:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2478
    :pswitch_4
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2477
    :pswitch_5
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onMessageChannelReady:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2476
    :pswitch_6
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2475
    :pswitch_7
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onPostMessage:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2474
    :pswitch_8
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->onNavigationEvent:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2473
    :pswitch_9
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->extraCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    .line 2472
    :pswitch_a
    sget-object p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->getInterfaceDescriptor:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeEnum$extraCallback$onMessageChannelReady;
    .locals 1

    .line 2222
    const-class v0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/writeEnum$extraCallback$onMessageChannelReady;
    .locals 1

    .line 2222
    sget-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:[Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/writeEnum$extraCallback$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 2453
    sget-object v0, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsService:Lo/writeEnum$extraCallback$onMessageChannelReady;

    if-eq p0, v0, :cond_0

    .line 2457
    iget v0, p0, Lo/writeEnum$extraCallback$onMessageChannelReady;->newSession:I

    return v0

    .line 2454
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
