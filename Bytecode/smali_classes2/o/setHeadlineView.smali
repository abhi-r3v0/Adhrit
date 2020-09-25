.class public final enum Lo/setHeadlineView;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/isPlayStorePossiblyUpdating;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setHeadlineView;",
        ">;",
        "Lo/isPlayStorePossiblyUpdating;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setHeadlineView;

.field private static final enum ICustomTabsCallback$Stub:Lo/setHeadlineView;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/setHeadlineView;

.field private static final enum ICustomTabsService:Lo/setHeadlineView;

.field private static final enum asBinder:Lo/setHeadlineView;

.field private static final enum asInterface:Lo/setHeadlineView;

.field private static final enum extraCallback:Lo/setHeadlineView;

.field private static final enum extraCommand:Lo/setHeadlineView;

.field private static final enum getInterfaceDescriptor:Lo/setHeadlineView;

.field private static final enum newSession:Lo/setHeadlineView;

.field private static final enum onMessageChannelReady:Lo/setHeadlineView;

.field private static final enum onNavigationEvent:Lo/setHeadlineView;

.field private static final enum onPostMessage:Lo/setHeadlineView;

.field private static final enum onRelationshipValidationResult:Lo/setHeadlineView;

.field private static final enum onTransact:Lo/setHeadlineView;

.field private static final requestPostMessageChannel:Lo/isRestrictedUserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isRestrictedUserProfile<",
            "Lo/setHeadlineView;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic updateVisuals:[Lo/setHeadlineView;

.field private static final enum warmup:Lo/setHeadlineView;


# instance fields
.field private final postMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lo/setHeadlineView;

    const/4 v1, 0x0

    const-string v2, "UNRECOGNIZED"

    invoke-direct {v0, v2, v1, v1}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->ICustomTabsCallback:Lo/setHeadlineView;

    .line 36
    new-instance v0, Lo/setHeadlineView;

    const/4 v2, 0x1

    const-string v3, "CODE_128"

    invoke-direct {v0, v3, v2, v2}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->onNavigationEvent:Lo/setHeadlineView;

    .line 37
    new-instance v0, Lo/setHeadlineView;

    const/4 v3, 0x2

    const-string v4, "CODE_39"

    invoke-direct {v0, v4, v3, v3}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->onPostMessage:Lo/setHeadlineView;

    .line 38
    new-instance v0, Lo/setHeadlineView;

    const/4 v4, 0x3

    const-string v5, "CODE_93"

    invoke-direct {v0, v5, v4, v4}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->onMessageChannelReady:Lo/setHeadlineView;

    .line 39
    new-instance v0, Lo/setHeadlineView;

    const/4 v5, 0x4

    const-string v6, "CODABAR"

    invoke-direct {v0, v6, v5, v5}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->extraCallback:Lo/setHeadlineView;

    .line 40
    new-instance v0, Lo/setHeadlineView;

    const/4 v6, 0x5

    const-string v7, "DATA_MATRIX"

    invoke-direct {v0, v7, v6, v6}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->onRelationshipValidationResult:Lo/setHeadlineView;

    .line 41
    new-instance v0, Lo/setHeadlineView;

    const/4 v7, 0x6

    const-string v8, "EAN_13"

    invoke-direct {v0, v8, v7, v7}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->asInterface:Lo/setHeadlineView;

    .line 42
    new-instance v0, Lo/setHeadlineView;

    const/4 v8, 0x7

    const-string v9, "EAN_8"

    invoke-direct {v0, v9, v8, v8}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->ICustomTabsCallback$Stub:Lo/setHeadlineView;

    .line 43
    new-instance v0, Lo/setHeadlineView;

    const/16 v9, 0x8

    const-string v10, "ITF"

    invoke-direct {v0, v10, v9, v9}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->asBinder:Lo/setHeadlineView;

    .line 44
    new-instance v0, Lo/setHeadlineView;

    const/16 v10, 0x9

    const-string v11, "QR_CODE"

    invoke-direct {v0, v11, v10, v10}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->onTransact:Lo/setHeadlineView;

    .line 45
    new-instance v0, Lo/setHeadlineView;

    const/16 v11, 0xa

    const-string v12, "UPC_A"

    invoke-direct {v0, v12, v11, v11}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->newSession:Lo/setHeadlineView;

    .line 46
    new-instance v0, Lo/setHeadlineView;

    const/16 v12, 0xb

    const-string v13, "UPC_E"

    invoke-direct {v0, v13, v12, v12}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->getInterfaceDescriptor:Lo/setHeadlineView;

    .line 47
    new-instance v0, Lo/setHeadlineView;

    const/16 v13, 0xc

    const-string v14, "PDF417"

    invoke-direct {v0, v14, v13, v13}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->ICustomTabsCallback$Stub$Proxy:Lo/setHeadlineView;

    .line 48
    new-instance v0, Lo/setHeadlineView;

    const/16 v14, 0xd

    const-string v15, "AZTEC"

    invoke-direct {v0, v15, v14, v14}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->warmup:Lo/setHeadlineView;

    .line 49
    new-instance v0, Lo/setHeadlineView;

    const/16 v15, 0xe

    const-string v14, "DATABAR"

    invoke-direct {v0, v14, v15, v15}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->ICustomTabsService:Lo/setHeadlineView;

    .line 50
    new-instance v0, Lo/setHeadlineView;

    const/16 v14, 0x10

    const/16 v15, 0xf

    const-string v13, "TEZ_CODE"

    invoke-direct {v0, v13, v15, v14}, Lo/setHeadlineView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setHeadlineView;->extraCommand:Lo/setHeadlineView;

    new-array v13, v14, [Lo/setHeadlineView;

    .line 51
    sget-object v14, Lo/setHeadlineView;->ICustomTabsCallback:Lo/setHeadlineView;

    aput-object v14, v13, v1

    sget-object v1, Lo/setHeadlineView;->onNavigationEvent:Lo/setHeadlineView;

    aput-object v1, v13, v2

    sget-object v1, Lo/setHeadlineView;->onPostMessage:Lo/setHeadlineView;

    aput-object v1, v13, v3

    sget-object v1, Lo/setHeadlineView;->onMessageChannelReady:Lo/setHeadlineView;

    aput-object v1, v13, v4

    sget-object v1, Lo/setHeadlineView;->extraCallback:Lo/setHeadlineView;

    aput-object v1, v13, v5

    sget-object v1, Lo/setHeadlineView;->onRelationshipValidationResult:Lo/setHeadlineView;

    aput-object v1, v13, v6

    sget-object v1, Lo/setHeadlineView;->asInterface:Lo/setHeadlineView;

    aput-object v1, v13, v7

    sget-object v1, Lo/setHeadlineView;->ICustomTabsCallback$Stub:Lo/setHeadlineView;

    aput-object v1, v13, v8

    sget-object v1, Lo/setHeadlineView;->asBinder:Lo/setHeadlineView;

    aput-object v1, v13, v9

    sget-object v1, Lo/setHeadlineView;->onTransact:Lo/setHeadlineView;

    aput-object v1, v13, v10

    sget-object v1, Lo/setHeadlineView;->newSession:Lo/setHeadlineView;

    aput-object v1, v13, v11

    sget-object v1, Lo/setHeadlineView;->getInterfaceDescriptor:Lo/setHeadlineView;

    aput-object v1, v13, v12

    sget-object v1, Lo/setHeadlineView;->ICustomTabsCallback$Stub$Proxy:Lo/setHeadlineView;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lo/setHeadlineView;->warmup:Lo/setHeadlineView;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lo/setHeadlineView;->ICustomTabsService:Lo/setHeadlineView;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    aput-object v0, v13, v15

    .line 52
    sput-object v13, Lo/setHeadlineView;->updateVisuals:[Lo/setHeadlineView;

    .line 53
    new-instance v0, Lo/setImageView;

    invoke-direct {v0}, Lo/setImageView;-><init>()V

    sput-object v0, Lo/setHeadlineView;->requestPostMessageChannel:Lo/isRestrictedUserProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lo/setHeadlineView;->postMessage:I

    return-void
.end method

.method public static onMessageChannelReady(I)Lo/setHeadlineView;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 19
    :pswitch_1
    sget-object p0, Lo/setHeadlineView;->extraCommand:Lo/setHeadlineView;

    return-object p0

    .line 18
    :pswitch_2
    sget-object p0, Lo/setHeadlineView;->ICustomTabsService:Lo/setHeadlineView;

    return-object p0

    .line 17
    :pswitch_3
    sget-object p0, Lo/setHeadlineView;->warmup:Lo/setHeadlineView;

    return-object p0

    .line 16
    :pswitch_4
    sget-object p0, Lo/setHeadlineView;->ICustomTabsCallback$Stub$Proxy:Lo/setHeadlineView;

    return-object p0

    .line 15
    :pswitch_5
    sget-object p0, Lo/setHeadlineView;->getInterfaceDescriptor:Lo/setHeadlineView;

    return-object p0

    .line 14
    :pswitch_6
    sget-object p0, Lo/setHeadlineView;->newSession:Lo/setHeadlineView;

    return-object p0

    .line 13
    :pswitch_7
    sget-object p0, Lo/setHeadlineView;->onTransact:Lo/setHeadlineView;

    return-object p0

    .line 12
    :pswitch_8
    sget-object p0, Lo/setHeadlineView;->asBinder:Lo/setHeadlineView;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Lo/setHeadlineView;->ICustomTabsCallback$Stub:Lo/setHeadlineView;

    return-object p0

    .line 10
    :pswitch_a
    sget-object p0, Lo/setHeadlineView;->asInterface:Lo/setHeadlineView;

    return-object p0

    .line 9
    :pswitch_b
    sget-object p0, Lo/setHeadlineView;->onRelationshipValidationResult:Lo/setHeadlineView;

    return-object p0

    .line 8
    :pswitch_c
    sget-object p0, Lo/setHeadlineView;->extraCallback:Lo/setHeadlineView;

    return-object p0

    .line 7
    :pswitch_d
    sget-object p0, Lo/setHeadlineView;->onMessageChannelReady:Lo/setHeadlineView;

    return-object p0

    .line 6
    :pswitch_e
    sget-object p0, Lo/setHeadlineView;->onPostMessage:Lo/setHeadlineView;

    return-object p0

    .line 5
    :pswitch_f
    sget-object p0, Lo/setHeadlineView;->onNavigationEvent:Lo/setHeadlineView;

    return-object p0

    .line 4
    :pswitch_10
    sget-object p0, Lo/setHeadlineView;->ICustomTabsCallback:Lo/setHeadlineView;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static onPostMessage()Lo/buildClient;
    .locals 1

    .line 21
    sget-object v0, Lo/setStoreView;->ICustomTabsCallback:Lo/buildClient;

    return-object v0
.end method

.method public static values()[Lo/setHeadlineView;
    .locals 1

    .line 1
    sget-object v0, Lo/setHeadlineView;->updateVisuals:[Lo/setHeadlineView;

    invoke-virtual {v0}, [Lo/setHeadlineView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setHeadlineView;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/setHeadlineView;->postMessage:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lo/setHeadlineView;->postMessage:I

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lo/setHeadlineView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
