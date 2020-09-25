.class public final Lo/snapFromFling$onPostMessage;
.super Lo/postShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/snapFromFling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiViewModel$GetAccounts;",
        "Lcom/cred/pay/repository/models/CredUpiDataItem;",
        "bankCodes",
        "Lorg/json/JSONArray;",
        "(Lorg/json/JSONArray;)V",
        "getBankCodes",
        "()Lorg/json/JSONArray;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onPostMessage:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "bankCodes"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lo/postShow;-><init>()V

    iput-object p1, p0, Lo/snapFromFling$onPostMessage;->onPostMessage:Lorg/json/JSONArray;

    return-void
.end method
