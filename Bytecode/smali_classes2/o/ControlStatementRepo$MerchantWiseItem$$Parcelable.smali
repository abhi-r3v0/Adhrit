.class final Lo/ControlStatementRepo$MerchantWiseItem$$Parcelable;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic extraCallback:Lo/getListTransaction;


# direct methods
.method constructor <init>(Lo/getListTransaction;)V
    .locals 0

    iput-object p1, p0, Lo/ControlStatementRepo$MerchantWiseItem$$Parcelable;->extraCallback:Lo/getListTransaction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lo/ControlStatementRepo$MerchantWiseItem$$Parcelable;->extraCallback:Lo/getListTransaction;

    invoke-static {v0, p1, p2}, Lo/getListTransaction;->onPostMessage(Lo/getListTransaction;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
