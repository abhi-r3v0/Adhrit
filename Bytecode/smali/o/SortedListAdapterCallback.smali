.class public abstract Lo/SortedListAdapterCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SortedListAdapterCallback$onNavigationEvent;
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

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 $*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001$B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J$\u0010\u0018\u001a\u00028\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u001fH\u0086\u0002\u00a2\u0006\u0002\u0010 J\r\u0010!\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010\"\u001a\u00020\u001cJ,\u0010\u0019\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u001f2\u0006\u0010\u0017\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010#R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0007\u001a\u00028\u0000X\u0084\u0004\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u001c\u0010\u0017\u001a\u00028\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefDelegate;",
        "T",
        "",
        "prefWrapper",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "key",
        "",
        "defaultValue",
        "(Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;Ljava/lang/String;Ljava/lang/Object;)V",
        "debug",
        "",
        "getDebug",
        "()Z",
        "getDefaultValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getKey",
        "()Ljava/lang/String;",
        "getPrefWrapper",
        "()Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "state",
        "tag",
        "getTag",
        "value",
        "getValue",
        "setValue",
        "(Ljava/lang/Object;)V",
        "addToWrapper",
        "",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "initializeValue",
        "reset",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V",
        "Companion",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final asInterface:Lo/compare;

.field public extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/compare;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/compare;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "prefWrapper"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SortedListAdapterCallback;->asInterface:Lo/compare;

    iput-object p2, p0, Lo/SortedListAdapterCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p3, p0, Lo/SortedListAdapterCallback;->ICustomTabsCallback:Ljava/lang/Object;

    const-string p1, "SharedPrefDelegate"

    .line 16
    iput-object p1, p0, Lo/SortedListAdapterCallback;->onNavigationEvent:Ljava/lang/String;

    .line 19
    sget-object p1, Lo/SortedListAdapterCallback$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/SortedListAdapterCallback$onNavigationEvent$ICustomTabsCallback;

    iput-object p1, p0, Lo/SortedListAdapterCallback;->onPostMessage:Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lo/SortedListAdapterCallback;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p1, p0, Lo/SortedListAdapterCallback;->extraCallback:Ljava/lang/Object;

    .line 3027
    iget-object p1, p0, Lo/SortedListAdapterCallback;->asInterface:Lo/compare;

    const-string/jumbo p2, "sharedPrefDelegate"

    invoke-static {p0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4027
    iget-object p1, p1, Lo/compare;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/applyUserOverwrite<",
            "*>;TT;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lo/SortedListAdapterCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lo/SortedListAdapterCallback;->onNavigationEvent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seter for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lo/applyUserOverwrite;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object p1, p0, Lo/SortedListAdapterCallback;->asInterface:Lo/compare;

    .line 3010
    iget-object p1, p1, Lo/compare;->onPostMessage:Landroid/content/SharedPreferences;

    if-nez p1, :cond_1

    const-string v0, "prefrences"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lo/SortedListAdapterCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lo/extraCallback;->extraCallback(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iput-object p2, p0, Lo/SortedListAdapterCallback;->extraCallback:Ljava/lang/Object;

    return-void
.end method

.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/SortedListAdapterCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method

.method protected final onNavigationEvent()Lo/compare;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/SortedListAdapterCallback;->asInterface:Lo/compare;

    return-object v0
.end method

.method public abstract onPostMessage()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/applyUserOverwrite<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lo/SortedListAdapterCallback;->onPostMessage:Ljava/lang/Object;

    sget-object v1, Lo/SortedListAdapterCallback$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/SortedListAdapterCallback$onNavigationEvent$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lo/SortedListAdapterCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/SortedListAdapterCallback;->extraCallback:Ljava/lang/Object;

    .line 33
    sget-object v0, Lo/SortedListAdapterCallback$onNavigationEvent$onMessageChannelReady;->ICustomTabsCallback:Lo/SortedListAdapterCallback$onNavigationEvent$onMessageChannelReady;

    iput-object v0, p0, Lo/SortedListAdapterCallback;->onPostMessage:Ljava/lang/Object;

    .line 35
    :cond_0
    iget-boolean v0, p0, Lo/SortedListAdapterCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lo/SortedListAdapterCallback;->onNavigationEvent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getter for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lo/applyUserOverwrite;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/SortedListAdapterCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    iget-object p1, p0, Lo/SortedListAdapterCallback;->extraCallback:Ljava/lang/Object;

    return-object p1
.end method
