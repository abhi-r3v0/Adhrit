.class public final Lo/preferLastSpan$onPostMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/preferLastSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final cred_symbols:I = 0x7f090000

.field public static final gilroy_bold:I = 0x7f090001

.field public static final gilroy_light:I = 0x7f090002

.field public static final gilroy_medium:I = 0x7f090003

.field public static final gilroy_regular:I = 0x7f090004

.field public static final gilroy_semibold:I = 0x7f090005

.field public static final overpass_mono_bold:I = 0x7f090007

.field public static final retro_8_bit:I = 0x7f090008


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/getOrganization;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/getOrganization;)V
    .locals 0

    .line 4000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/preferLastSpan$onPostMessage;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/preferLastSpan$onPostMessage;->arg$2:Lo/getOrganization;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/getOrganization;)Ljava/lang/Runnable;
    .locals 1

    .line 6000
    new-instance v0, Lo/preferLastSpan$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/preferLastSpan$onPostMessage;-><init>(Lo/getEndedAt;Lo/getOrganization;)V

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 2

    .line 5000
    iget-object v0, p0, Lo/preferLastSpan$onPostMessage;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/preferLastSpan$onPostMessage;->arg$2:Lo/getOrganization;

    invoke-static {v0, v1}, Lo/getEndedAt;->lambda$listen$6(Lo/getEndedAt;Lo/getOrganization;)V

    return-void
.end method
