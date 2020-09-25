.class final synthetic Lo/PayNowBottomSheetResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onNavigationEvent:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PayNowBottomSheetResponse;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lo/PayNowBottomSheetResponse;->onPostMessage:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/PayNowBottomSheetResponse;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo/PayNowBottomSheetResponse;->onPostMessage:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
