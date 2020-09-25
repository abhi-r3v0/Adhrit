.class Lo/getGenerator$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getOrganization;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:I

.field private viewSnapshot:Lo/getDiskSpace;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getGenerator$ICustomTabsCallback;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lo/getGenerator$ICustomTabsCallback;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/getGenerator$ICustomTabsCallback;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lo/getGenerator$ICustomTabsCallback;)Lo/getDiskSpace;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/getGenerator$ICustomTabsCallback;->viewSnapshot:Lo/getDiskSpace;

    return-object p0
.end method

.method static synthetic access$102(Lo/getGenerator$ICustomTabsCallback;Lo/getDiskSpace;)Lo/getDiskSpace;
    .locals 0

    .line 36
    iput-object p1, p0, Lo/getGenerator$ICustomTabsCallback;->viewSnapshot:Lo/getDiskSpace;

    return-object p1
.end method

.method static synthetic access$200(Lo/getGenerator$ICustomTabsCallback;)I
    .locals 0

    .line 36
    iget p0, p0, Lo/getGenerator$ICustomTabsCallback;->targetId:I

    return p0
.end method

.method static synthetic access$202(Lo/getGenerator$ICustomTabsCallback;I)I
    .locals 0

    .line 36
    iput p1, p0, Lo/getGenerator$ICustomTabsCallback;->targetId:I

    return p1
.end method
