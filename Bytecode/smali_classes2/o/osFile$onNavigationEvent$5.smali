.class final Lo/osFile$onNavigationEvent$5;
.super Lo/osFile$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/osFile$onNavigationEvent;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/osFile<",
        "TK;TV;>.ICustomTabsCallback<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/osFile$onNavigationEvent;)V
    .locals 0

    .line 797
    iget-object p1, p1, Lo/osFile$onNavigationEvent;->ICustomTabsCallback:Lo/osFile;

    invoke-direct {p0, p1}, Lo/osFile$ICustomTabsCallback;-><init>(Lo/osFile;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lo/osFile$onNavigationEvent$5;->onNavigationEvent()Lo/osFile$onRelationshipValidationResult;

    move-result-object v0

    return-object v0
.end method
