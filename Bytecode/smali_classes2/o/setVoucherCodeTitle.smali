.class final Lo/setVoucherCodeTitle;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;Landroid/os/Handler;)V
    .locals 0

    iput-object p2, p0, Lo/setVoucherCodeTitle;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lo/setVoucherCodeTitle;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
