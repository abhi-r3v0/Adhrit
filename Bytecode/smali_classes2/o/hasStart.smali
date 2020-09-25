.class public final Lo/hasStart;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# instance fields
.field private ICustomTabsCallback:Lo/propertyName;


# direct methods
.method public constructor <init>(Lo/propertyName;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/hasStart;->ICustomTabsCallback:Lo/propertyName;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    move-object v0, p1

    check-cast v0, Lo/isViewFromLeft;

    .line 1117
    iget-object v1, v0, Lo/isViewFromLeft;->onNavigationEvent:Lo/isCompleteForChild;

    .line 2101
    iget-object v2, v0, Lo/isViewFromLeft;->onPostMessage:Lo/getIndexEndValue;

    .line 3053
    iget-object v3, v1, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    const-string v4, "GET"

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 42
    iget-object v4, p0, Lo/hasStart;->ICustomTabsCallback:Lo/propertyName;

    invoke-virtual {v2, v4, p1, v3}, Lo/getIndexEndValue;->onPostMessage(Lo/propertyName;Lo/annotatedName$onNavigationEvent;Z)Lo/getIndexStartName;

    move-result-object p1

    .line 43
    invoke-virtual {v2}, Lo/getIndexEndValue;->onNavigationEvent()Lo/raiseEvents;

    move-result-object v3

    .line 45
    invoke-virtual {v0, v1, v2, p1, v3}, Lo/isViewFromLeft;->onPostMessage(Lo/isCompleteForChild;Lo/getIndexEndValue;Lo/getIndexStartName;Lo/raiseEvents;)Lo/childAddedChange;

    move-result-object p1

    return-object p1
.end method
