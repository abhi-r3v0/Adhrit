.class public final enum Lo/setPriceView;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/isPlayStorePossiblyUpdating;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setPriceView;",
        ">;",
        "Lo/isPlayStorePossiblyUpdating;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setPriceView;

.field private static final enum ICustomTabsCallback$Stub:Lo/setPriceView;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/setPriceView;

.field private static final enum ICustomTabsService:Lo/setPriceView;

.field private static final enum asBinder:Lo/setPriceView;

.field private static final enum asInterface:Lo/setPriceView;

.field private static final enum extraCallback:Lo/setPriceView;

.field private static final enum getInterfaceDescriptor:Lo/setPriceView;

.field private static final newSession:Lo/isRestrictedUserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isRestrictedUserProfile<",
            "Lo/setPriceView;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum onMessageChannelReady:Lo/setPriceView;

.field private static final enum onNavigationEvent:Lo/setPriceView;

.field private static final enum onPostMessage:Lo/setPriceView;

.field private static final enum onRelationshipValidationResult:Lo/setPriceView;

.field private static final enum onTransact:Lo/setPriceView;

.field private static final synthetic updateVisuals:[Lo/setPriceView;

.field private static final enum warmup:Lo/setPriceView;


# instance fields
.field private final extraCommand:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 33
    new-instance v0, Lo/setPriceView;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_FORMAT"

    invoke-direct {v0, v2, v1, v1}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->onMessageChannelReady:Lo/setPriceView;

    .line 34
    new-instance v0, Lo/setPriceView;

    const/4 v2, 0x1

    const-string v3, "CONTACT_INFO"

    invoke-direct {v0, v3, v2, v2}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->onNavigationEvent:Lo/setPriceView;

    .line 35
    new-instance v0, Lo/setPriceView;

    const/4 v3, 0x2

    const-string v4, "EMAIL"

    invoke-direct {v0, v4, v3, v3}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->extraCallback:Lo/setPriceView;

    .line 36
    new-instance v0, Lo/setPriceView;

    const/4 v4, 0x3

    const-string v5, "ISBN"

    invoke-direct {v0, v5, v4, v4}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->onPostMessage:Lo/setPriceView;

    .line 37
    new-instance v0, Lo/setPriceView;

    const/4 v5, 0x4

    const-string v6, "PHONE"

    invoke-direct {v0, v6, v5, v5}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->ICustomTabsCallback:Lo/setPriceView;

    .line 38
    new-instance v0, Lo/setPriceView;

    const/4 v6, 0x5

    const-string v7, "PRODUCT"

    invoke-direct {v0, v7, v6, v6}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->asInterface:Lo/setPriceView;

    .line 39
    new-instance v0, Lo/setPriceView;

    const/4 v7, 0x6

    const-string v8, "SMS"

    invoke-direct {v0, v8, v7, v7}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->onTransact:Lo/setPriceView;

    .line 40
    new-instance v0, Lo/setPriceView;

    const/4 v8, 0x7

    const-string v9, "TEXT"

    invoke-direct {v0, v9, v8, v8}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->asBinder:Lo/setPriceView;

    .line 41
    new-instance v0, Lo/setPriceView;

    const/16 v9, 0x8

    const-string v10, "URL"

    invoke-direct {v0, v10, v9, v9}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->onRelationshipValidationResult:Lo/setPriceView;

    .line 42
    new-instance v0, Lo/setPriceView;

    const/16 v10, 0x9

    const-string v11, "WIFI"

    invoke-direct {v0, v11, v10, v10}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->ICustomTabsCallback$Stub:Lo/setPriceView;

    .line 43
    new-instance v0, Lo/setPriceView;

    const/16 v11, 0xa

    const-string v12, "GEO"

    invoke-direct {v0, v12, v11, v11}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->ICustomTabsService:Lo/setPriceView;

    .line 44
    new-instance v0, Lo/setPriceView;

    const/16 v12, 0xb

    const-string v13, "CALENDAR_EVENT"

    invoke-direct {v0, v13, v12, v12}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->warmup:Lo/setPriceView;

    .line 45
    new-instance v0, Lo/setPriceView;

    const/16 v13, 0xc

    const-string v14, "DRIVER_LICENSE"

    invoke-direct {v0, v14, v13, v13}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->ICustomTabsCallback$Stub$Proxy:Lo/setPriceView;

    .line 46
    new-instance v0, Lo/setPriceView;

    const/16 v14, 0xd

    const-string v15, "BOARDING_PASS"

    invoke-direct {v0, v15, v14, v14}, Lo/setPriceView;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setPriceView;->getInterfaceDescriptor:Lo/setPriceView;

    const/16 v15, 0xe

    new-array v15, v15, [Lo/setPriceView;

    .line 47
    sget-object v16, Lo/setPriceView;->onMessageChannelReady:Lo/setPriceView;

    aput-object v16, v15, v1

    sget-object v1, Lo/setPriceView;->onNavigationEvent:Lo/setPriceView;

    aput-object v1, v15, v2

    sget-object v1, Lo/setPriceView;->extraCallback:Lo/setPriceView;

    aput-object v1, v15, v3

    sget-object v1, Lo/setPriceView;->onPostMessage:Lo/setPriceView;

    aput-object v1, v15, v4

    sget-object v1, Lo/setPriceView;->ICustomTabsCallback:Lo/setPriceView;

    aput-object v1, v15, v5

    sget-object v1, Lo/setPriceView;->asInterface:Lo/setPriceView;

    aput-object v1, v15, v6

    sget-object v1, Lo/setPriceView;->onTransact:Lo/setPriceView;

    aput-object v1, v15, v7

    sget-object v1, Lo/setPriceView;->asBinder:Lo/setPriceView;

    aput-object v1, v15, v8

    sget-object v1, Lo/setPriceView;->onRelationshipValidationResult:Lo/setPriceView;

    aput-object v1, v15, v9

    sget-object v1, Lo/setPriceView;->ICustomTabsCallback$Stub:Lo/setPriceView;

    aput-object v1, v15, v10

    sget-object v1, Lo/setPriceView;->ICustomTabsService:Lo/setPriceView;

    aput-object v1, v15, v11

    sget-object v1, Lo/setPriceView;->warmup:Lo/setPriceView;

    aput-object v1, v15, v12

    sget-object v1, Lo/setPriceView;->ICustomTabsCallback$Stub$Proxy:Lo/setPriceView;

    aput-object v1, v15, v13

    aput-object v0, v15, v14

    .line 48
    sput-object v15, Lo/setPriceView;->updateVisuals:[Lo/setPriceView;

    .line 49
    new-instance v0, Lo/setStarRatingView;

    invoke-direct {v0}, Lo/setStarRatingView;-><init>()V

    sput-object v0, Lo/setPriceView;->newSession:Lo/isRestrictedUserProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lo/setPriceView;->extraCommand:I

    return-void
.end method

.method public static ICustomTabsCallback(I)Lo/setPriceView;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lo/setPriceView;->getInterfaceDescriptor:Lo/setPriceView;

    return-object p0

    .line 16
    :pswitch_1
    sget-object p0, Lo/setPriceView;->ICustomTabsCallback$Stub$Proxy:Lo/setPriceView;

    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Lo/setPriceView;->warmup:Lo/setPriceView;

    return-object p0

    .line 14
    :pswitch_3
    sget-object p0, Lo/setPriceView;->ICustomTabsService:Lo/setPriceView;

    return-object p0

    .line 13
    :pswitch_4
    sget-object p0, Lo/setPriceView;->ICustomTabsCallback$Stub:Lo/setPriceView;

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lo/setPriceView;->onRelationshipValidationResult:Lo/setPriceView;

    return-object p0

    .line 11
    :pswitch_6
    sget-object p0, Lo/setPriceView;->asBinder:Lo/setPriceView;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lo/setPriceView;->onTransact:Lo/setPriceView;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lo/setPriceView;->asInterface:Lo/setPriceView;

    return-object p0

    .line 8
    :pswitch_9
    sget-object p0, Lo/setPriceView;->ICustomTabsCallback:Lo/setPriceView;

    return-object p0

    .line 7
    :pswitch_a
    sget-object p0, Lo/setPriceView;->onPostMessage:Lo/setPriceView;

    return-object p0

    .line 6
    :pswitch_b
    sget-object p0, Lo/setPriceView;->extraCallback:Lo/setPriceView;

    return-object p0

    .line 5
    :pswitch_c
    sget-object p0, Lo/setPriceView;->onNavigationEvent:Lo/setPriceView;

    return-object p0

    .line 4
    :pswitch_d
    sget-object p0, Lo/setPriceView;->onMessageChannelReady:Lo/setPriceView;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onPostMessage()Lo/buildClient;
    .locals 1

    .line 19
    sget-object v0, Lo/getAdvertisingIdInfo;->onNavigationEvent:Lo/buildClient;

    return-object v0
.end method

.method public static values()[Lo/setPriceView;
    .locals 1

    .line 1
    sget-object v0, Lo/setPriceView;->updateVisuals:[Lo/setPriceView;

    invoke-virtual {v0}, [Lo/setPriceView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setPriceView;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/setPriceView;->extraCommand:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, p0, Lo/setPriceView;->extraCommand:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lo/setPriceView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
