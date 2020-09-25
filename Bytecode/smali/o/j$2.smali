.class Lo/j$2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/j;-><init>([Lo/HuaweiReferrer;Lo/InstrumentViewMapping;Lo/Validate;Lo/PaymentInstrumentRequestJsonAdapter;Lo/CheckoutBuilder$PolingRemoteConfig;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/j;


# direct methods
.method constructor <init>(Lo/j;Landroid/os/Looper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lo/j$2;->onPostMessage:Lo/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/j$2;->onPostMessage:Lo/j;

    invoke-virtual {v0, p1}, Lo/j;->extraCallback(Landroid/os/Message;)V

    return-void
.end method
