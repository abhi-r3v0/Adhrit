.class public final Lo/ControlStatementRepo$MerchantWiseItem;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static extraCallback:Lo/ControlStatementRepo$MerchantWiseItem;


# instance fields
.field onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()Lo/ControlStatementRepo$MerchantWiseItem;
    .locals 1

    sget-object v0, Lo/ControlStatementRepo$MerchantWiseItem;->extraCallback:Lo/ControlStatementRepo$MerchantWiseItem;

    if-nez v0, :cond_0

    new-instance v0, Lo/ControlStatementRepo$MerchantWiseItem;

    invoke-direct {v0}, Lo/ControlStatementRepo$MerchantWiseItem;-><init>()V

    sput-object v0, Lo/ControlStatementRepo$MerchantWiseItem;->extraCallback:Lo/ControlStatementRepo$MerchantWiseItem;

    :cond_0
    sget-object v0, Lo/ControlStatementRepo$MerchantWiseItem;->extraCallback:Lo/ControlStatementRepo$MerchantWiseItem;

    return-object v0
.end method
