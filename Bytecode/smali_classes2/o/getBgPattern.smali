.class final Lo/getBgPattern;
.super Lo/getPriority;
.source ""


# instance fields
.field private final synthetic onPostMessage:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Lo/setPriority;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/getBgPattern;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Lo/getPriority;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/getBgPattern;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    invoke-static {p1, v0}, Lo/addAllInternal;->onPostMessage(Lcom/google/android/gms/common/api/Status;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
