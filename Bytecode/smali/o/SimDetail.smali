.class final Lo/SimDetail;
.super Lo/TransactionDetails;
.source ""


# instance fields
.field private final extraCallback:Lo/SimDetailJsonAdapter;


# direct methods
.method public constructor <init>(Lo/SimDetailJsonAdapter;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/TransactionDetails;-><init>()V

    .line 30
    iput-object p1, p0, Lo/SimDetail;->extraCallback:Lo/SimDetailJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/SimDetail;->extraCallback:Lo/SimDetailJsonAdapter;

    invoke-virtual {v0, p0}, Lo/SimDetailJsonAdapter;->ICustomTabsCallback(Lo/TransactionDetails;)V

    return-void
.end method
