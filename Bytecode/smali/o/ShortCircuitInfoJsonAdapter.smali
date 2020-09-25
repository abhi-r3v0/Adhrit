.class public abstract Lo/ShortCircuitInfoJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/calculateConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/calculateConfig<",
        "Lo/ShortCircuitInfoJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public final mayLaunchUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final updateVisuals:Z

.field public final warmup:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    .line 46
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfoJsonAdapter;->mayLaunchUrl:Ljava/util/List;

    .line 47
    iput-boolean p3, p0, Lo/ShortCircuitInfoJsonAdapter;->updateVisuals:Z

    return-void
.end method
