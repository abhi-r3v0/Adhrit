.class final Lo/PreferredInstrumentsJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;


# static fields
.field public static final onMessageChannelReady:Lo/PreferredInstrumentsJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/PreferredInstrumentsJsonAdapter;

    invoke-direct {v0}, Lo/PreferredInstrumentsJsonAdapter;-><init>()V

    sput-object v0, Lo/PreferredInstrumentsJsonAdapter;->onMessageChannelReady:Lo/PreferredInstrumentsJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/NetBankingInstrumentJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/SessionCallResponse;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .locals 1

    new-instance v0, Lo/PaymentStatus;

    invoke-direct {v0, p1, p2, p3}, Lo/PaymentStatus;-><init>(Lo/NetBankingInstrumentJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/SessionCallResponse;)V

    return-object v0
.end method
