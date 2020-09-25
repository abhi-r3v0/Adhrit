.class final Lo/getCategoryId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPrimaryButtonText$ICustomTabsCallback;


# instance fields
.field private final synthetic extraCallback:Lo/TransactionJsonAdapter;


# direct methods
.method constructor <init>(Lo/TransactionJsonAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getCategoryId;->extraCallback:Lo/TransactionJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/setReferenceId;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/getCategoryId;->extraCallback:Lo/TransactionJsonAdapter;

    invoke-interface {v0, p1}, Lo/TransactionJsonAdapter;->onConnectionFailed(Lo/setReferenceId;)V

    return-void
.end method
