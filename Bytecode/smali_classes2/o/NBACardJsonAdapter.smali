.class final synthetic Lo/NBACardJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final ICustomTabsCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/NBACardJsonAdapter;

    invoke-direct {v0}, Lo/NBACardJsonAdapter;-><init>()V

    sput-object v0, Lo/NBACardJsonAdapter;->ICustomTabsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lo/getParcel;->mayLaunchUrl()Lo/NBAResponse;

    move-result-object v0

    invoke-virtual {v0}, Lo/NBAResponse;->extraCallback()V

    return-void
.end method
