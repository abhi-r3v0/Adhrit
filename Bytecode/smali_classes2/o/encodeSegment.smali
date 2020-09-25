.class final synthetic Lo/encodeSegment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultsFromXml;


# static fields
.field static final extraCallback:Lo/getDefaultsFromXml;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/encodeSegment;

    invoke-direct {v0}, Lo/encodeSegment;-><init>()V

    sput-object v0, Lo/encodeSegment;->extraCallback:Lo/getDefaultsFromXml;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lo/zziq;->mayLaunchUrl()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
