.class final Lo/getIndexedNode$2;
.super Lo/getIndexedFilter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getIndexedNode;-><init>(Lo/propertyName;Lo/isCompleteForChild;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getIndexedNode;


# direct methods
.method constructor <init>(Lo/getIndexedNode;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/getIndexedNode$2;->extraCallback:Lo/getIndexedNode;

    invoke-direct {p0}, Lo/getIndexedFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/getIndexedNode$2;->extraCallback:Lo/getIndexedNode;

    .line 1131
    iget-object v0, v0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    const/4 v1, 0x1

    .line 2089
    iput-boolean v1, v0, Lo/getLimit;->ICustomTabsCallback:Z

    .line 2090
    iget-object v0, v0, Lo/getLimit;->extraCallback:Lo/getIndexEndValue;

    if-eqz v0, :cond_0

    .line 2091
    invoke-virtual {v0}, Lo/getIndexEndValue;->onPostMessage()V

    :cond_0
    return-void
.end method
