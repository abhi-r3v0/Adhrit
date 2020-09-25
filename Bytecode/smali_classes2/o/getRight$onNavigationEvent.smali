.class final Lo/getRight$onNavigationEvent;
.super Lo/getMinKey$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/emptyMap;


# direct methods
.method constructor <init>(Lo/emptyMap;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lo/getMinKey$ICustomTabsCallback$Stub;-><init>()V

    .line 353
    iput-object p1, p0, Lo/getRight$onNavigationEvent;->onNavigationEvent:Lo/emptyMap;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 1

    .line 358
    iget-object v0, p0, Lo/getRight$onNavigationEvent;->onNavigationEvent:Lo/emptyMap;

    invoke-static {v0}, Lo/getMinKey$ICustomTabsCallback;->extraCallback(Lo/emptyMap;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method
