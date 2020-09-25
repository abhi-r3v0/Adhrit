.class public abstract Lo/isLeafNode;
.super Lo/processNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/processNode<",
        "TK;TV;",
        "Ljava/util/HashMap<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/processNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent()Ljava/util/Map;
    .locals 1

    .line 1028
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
