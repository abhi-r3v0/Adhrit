.class final Lo/getProvider;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final onNavigationEvent:Lo/getProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getProvider;

    invoke-direct {v0}, Lo/getProvider;-><init>()V

    sput-object v0, Lo/getProvider;->onNavigationEvent:Lo/getProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/getRefreshToken$extraCallback;

    check-cast p2, Lo/getRefreshToken$extraCallback;

    .line 1000
    invoke-static {p1, p2}, Lo/getRefreshToken;->ICustomTabsCallback(Lo/getRefreshToken$extraCallback;Lo/getRefreshToken$extraCallback;)I

    move-result p1

    return p1
.end method
