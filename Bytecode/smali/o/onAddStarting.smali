.class public abstract Lo/onAddStarting;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\n\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiPaymentState;",
        "",
        "()V",
        "Lcom/dreamplug/upi/Permission;",
        "Lcom/dreamplug/upi/SessionToken;",
        "Lcom/dreamplug/upi/BindDevice;",
        "Lcom/dreamplug/upi/GetSimDetails;",
        "Lcom/dreamplug/upi/SimStatus;",
        "Lcom/dreamplug/upi/EmptyAccounts;",
        "Lcom/dreamplug/upi/UpiGetAccount;",
        "Lcom/dreamplug/upi/UpiAccountList;",
        "Lcom/dreamplug/upi/SettingMPin;",
        "Lcom/dreamplug/upi/SetupMPin;",
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
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/onAddStarting;-><init>()V

    return-void
.end method
