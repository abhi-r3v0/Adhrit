.class final Lo/BatcherWorker;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic onNavigationEvent:Lo/RewardServiceCurrency;


# direct methods
.method constructor <init>(Lo/RewardServiceCurrency;)V
    .locals 0

    iput-object p1, p0, Lo/BatcherWorker;->onNavigationEvent:Lo/RewardServiceCurrency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lo/BatcherWorker;->onNavigationEvent:Lo/RewardServiceCurrency;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
