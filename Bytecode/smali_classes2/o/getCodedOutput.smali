.class public final Lo/getCodedOutput;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCodedOutput$asBinder;,
        Lo/getCodedOutput$onTransact;,
        Lo/getCodedOutput$onMessageChannelReady;,
        Lo/getCodedOutput$onPostMessage;,
        Lo/getCodedOutput$ICustomTabsCallback;,
        Lo/getCodedOutput$asInterface;,
        Lo/getCodedOutput$onNavigationEvent;,
        Lo/getCodedOutput$extraCallback;,
        Lo/getCodedOutput$onRelationshipValidationResult;
    }
.end annotation


# instance fields
.field private final zzei:Lcom/google/firebase/perf/internal/GaugeManager;

.field private final zzej:Ljava/lang/String;

.field private final zzek:Lo/onCreateLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lo/onCreateLoader;)V
    .locals 0

    .line 4000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCodedOutput;->zzei:Lcom/google/firebase/perf/internal/GaugeManager;

    iput-object p2, p0, Lo/getCodedOutput;->zzej:Ljava/lang/String;

    iput-object p3, p0, Lo/getCodedOutput;->zzek:Lo/onCreateLoader;

    return-void
.end method

.method public static registerAllExtensions(Lo/writeSessionEventDevice;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 5000
    iget-object v0, p0, Lo/getCodedOutput;->zzei:Lcom/google/firebase/perf/internal/GaugeManager;

    iget-object v1, p0, Lo/getCodedOutput;->zzej:Ljava/lang/String;

    iget-object v2, p0, Lo/getCodedOutput;->zzek:Lo/onCreateLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/internal/GaugeManager;->zzc(Ljava/lang/String;Lo/onCreateLoader;)V

    return-void
.end method
