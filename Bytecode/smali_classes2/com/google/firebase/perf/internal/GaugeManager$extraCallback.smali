.class final Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/internal/GaugeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private final zzdx:Lo/onPageFinished;

.field private final zzed:Lo/onCreateLoader;


# direct methods
.method constructor <init>(Lcom/google/firebase/perf/internal/GaugeManager;Lo/onPageFinished;Lo/onCreateLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;->zzdx:Lo/onPageFinished;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;->zzed:Lo/onCreateLoader;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;)Lo/onPageFinished;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;->zzdx:Lo/onPageFinished;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;)Lo/onCreateLoader;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;->zzed:Lo/onCreateLoader;

    return-object p0
.end method
