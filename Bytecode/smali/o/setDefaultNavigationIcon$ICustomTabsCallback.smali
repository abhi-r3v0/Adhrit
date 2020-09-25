.class public final Lo/setDefaultNavigationIcon$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDefaultNavigationIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final onPostMessage:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/setDefaultNavigationIcon$ICustomTabsCallback<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:I

.field private onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Lo/getHorizontalOffset;->onPostMessage(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onPostMessage:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/Object;II)Lo/setDefaultNavigationIcon$ICustomTabsCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lo/setDefaultNavigationIcon$ICustomTabsCallback<",
            "TA;>;"
        }
    .end annotation

    .line 84
    sget-object p1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onPostMessage:Ljava/util/Queue;

    monitor-enter p1

    .line 85
    :try_start_0
    sget-object p2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onPostMessage:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;

    .line 86
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 88
    new-instance p2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;

    invoke-direct {p2}, Lo/setDefaultNavigationIcon$ICustomTabsCallback;-><init>()V

    .line 1098
    :cond_0
    iput-object p0, p2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    const/4 p0, 0x0

    .line 1099
    iput p0, p2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->extraCallback:I

    .line 1100
    iput p0, p2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->ICustomTabsCallback:I

    return-object p2

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 111
    instance-of v0, p1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;

    .line 114
    iget v0, p0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->extraCallback:I

    iget v2, p1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->extraCallback:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->ICustomTabsCallback:I

    iget v2, p1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->ICustomTabsCallback:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    iget-object p1, p1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 121
    iget v0, p0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->ICustomTabsCallback:I

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget v1, p0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->extraCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v1, p0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
