.class final Lo/computeFixed64Size$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeDoubleSizeNoTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeFixed64Size;->ICustomTabsCallback(Lo/writeRawByte;)Lo/computeDoubleSizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/computeDoubleSizeNoTag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/writeFixed32NoTag;


# direct methods
.method constructor <init>(Lo/writeFixed32NoTag;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/computeFixed64Size$10;->ICustomTabsCallback:Lo/writeFixed32NoTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lo/computeFixed64Size$10;->ICustomTabsCallback:Lo/writeFixed32NoTag;

    invoke-interface {v0}, Lo/writeFixed32NoTag;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
