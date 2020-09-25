.class public final Lo/shouldBeKeptAsChild$extraCommand;
.super Lo/writeRawByte;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldBeKeptAsChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeRawByte<",
        "Lcom/cred/pay/repository/models/UpiLinkAccountResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/dreamplug/upi/CredUpiPresenter$sdkResponse$type$5",
        "Lcom/google/gson/reflect/TypeToken;",
        "Lcom/cred/pay/repository/models/UpiLinkAccountResponse;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 748
    invoke-direct {p0}, Lo/writeRawByte;-><init>()V

    return-void
.end method
