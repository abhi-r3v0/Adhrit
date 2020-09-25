.class public abstract Lo/setNumberEnteredListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setNumberEnteredListener$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    invoke-static {}, Lo/setDotsClickable;->onPostMessage()Lo/setDotsClickable;

    move-result-object v0

    iget-object v0, v0, Lo/setDotsClickable;->onNavigationEvent:Lo/preferLastSpan$onNavigationEvent;

    .line 2006
    iget-object v0, v0, Lo/preferLastSpan$onNavigationEvent;->onNavigationEvent:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/setNumberEnteredListener;-><init>()V

    return-void
.end method
