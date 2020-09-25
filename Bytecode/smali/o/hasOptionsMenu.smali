.class public abstract Lo/hasOptionsMenu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H&J$\u0010\u000b\u001a\u00028\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0086\u0002\u00a2\u0006\u0002\u0010\u000fR!\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/remote/mixpanel/RemoteVarDelegate;",
        "T",
        "",
        "()V",
        "tweak",
        "Lcom/mixpanel/android/mpmetrics/Tweak;",
        "getTweak",
        "()Lcom/mixpanel/android/mpmetrics/Tweak;",
        "tweak$delegate",
        "Lkotlin/Lazy;",
        "createTweak",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lo/hasOptionsMenu$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/hasOptionsMenu$ICustomTabsCallback;-><init>(Lo/hasOptionsMenu;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 18
    iput-object v1, p0, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/getJsonObjectFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getJsonObjectFrom<",
            "TT;>;"
        }
    .end annotation
.end method
