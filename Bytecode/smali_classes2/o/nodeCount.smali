.class final synthetic Lo/nodeCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultsFromXml;


# static fields
.field static final extraCallback:Lo/getDefaultsFromXml;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/nodeCount;

    invoke-direct {v0}, Lo/nodeCount;-><init>()V

    sput-object v0, Lo/nodeCount;->extraCallback:Lo/getDefaultsFromXml;

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

    invoke-static {}, Lo/zziq;->ICustomTabsService$Stub$Proxy()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
