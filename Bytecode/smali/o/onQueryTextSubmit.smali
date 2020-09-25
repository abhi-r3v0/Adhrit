.class public final Lo/onQueryTextSubmit;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchView$SearchAutoComplete;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onQueryTextSubmit$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0002J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J,\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016J\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0004H\u0016R&\u0010\u0003\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0008\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/datadog/android/log/internal/constraints/DatadogLogConstraints;",
        "Lcom/datadog/android/log/internal/constraints/LogConstraints;",
        "()V",
        "attributeKeyTransforms",
        "",
        "Lkotlin/Function1;",
        "",
        "Lcom/datadog/android/log/internal/constraints/StringTransform;",
        "tagTransforms",
        "convertAttributeKey",
        "rawKey",
        "convertTag",
        "rawTag",
        "isKeyReserved",
        "",
        "tag",
        "validateAttributes",
        "",
        "",
        "attributes",
        "validateTags",
        "tags",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onDisconnectSetValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onDisconnectSetValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "host"

    const-string v1, "device"

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "service"

    .line 130
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    .line 129
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3044
    invoke-static {v0}, Lo/isStopped;->onPostMessage([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 129
    sput-object v0, Lo/onQueryTextSubmit;->extraCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lo/onDisconnectSetValue;

    .line 67
    sget-object v1, Lo/onQueryTextSubmit$onNavigationEvent;->ICustomTabsCallback:Lo/onQueryTextSubmit$onNavigationEvent;

    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 69
    sget-object v1, Lo/onQueryTextSubmit$onPostMessage;->extraCallback:Lo/onQueryTextSubmit$onPostMessage;

    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 71
    sget-object v1, Lo/onQueryTextSubmit$onMessageChannelReady;->ICustomTabsCallback:Lo/onQueryTextSubmit$onMessageChannelReady;

    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 73
    sget-object v1, Lo/onQueryTextSubmit$onRelationshipValidationResult;->onNavigationEvent:Lo/onQueryTextSubmit$onRelationshipValidationResult;

    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 75
    sget-object v1, Lo/onQueryTextSubmit$asBinder;->ICustomTabsCallback:Lo/onQueryTextSubmit$asBinder;

    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 77
    new-instance v1, Lo/onQueryTextSubmit$asInterface;

    invoke-direct {v1, p0}, Lo/onQueryTextSubmit$asInterface;-><init>(Lo/onQueryTextSubmit;)V

    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "elements"

    .line 65
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asList"

    .line 1076
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 1129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object v0, p0, Lo/onQueryTextSubmit;->onNavigationEvent:Ljava/util/List;

    .line 102
    sget-object v0, Lo/onQueryTextSubmit$extraCallback;->onPostMessage:Lo/onQueryTextSubmit$extraCallback;

    .line 3019
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "java.util.Collections.singletonList(element)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object v0, p0, Lo/onQueryTextSubmit;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 115
    iget-object v0, p0, Lo/onQueryTextSubmit;->onMessageChannelReady:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDisconnectSetValue;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v1, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static final synthetic onNavigationEvent(Ljava/lang/String;)Z
    .locals 3

    .line 4087
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/16 v2, 0x3a

    .line 4990
    invoke-static {v0, v2, v1, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p0, :cond_0

    .line 4089
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4090
    sget-object v0, Lo/onQueryTextSubmit;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4089
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1
.end method

.method private final onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lo/onQueryTextSubmit;->onNavigationEvent:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDisconnectSetValue;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {v1, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "tags"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 144
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-direct {p0, v1}, Lo/onQueryTextSubmit;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 22
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is an invalid tag, and was ignored."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v5, v4}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {v2, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 24
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tag \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" was modified to \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" to match our constraints."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/onQueryTextChange;->extraCallback(Lo/onQueryTextChange;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    sub-int/2addr p1, v1

    if-lez p1, :cond_4

    .line 30
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "too many tags were added, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " had to be discarded."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/onQueryTextChange;->extraCallback(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 32
    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 156
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lo/onQueryTextSubmit;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 39
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" is an invalid attribute, and was ignored."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    invoke-static {v2, v1, v3, v3, v4}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 43
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "attribute \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" was modified to \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" to match our constraints."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Lo/onQueryTextChange;->extraCallback(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 48
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x100

    sub-int/2addr p1, v1

    if-lez p1, :cond_4

    .line 53
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "too many attributes were added, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " had to be discarded."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {v2, p1}, Lo/onQueryTextChange;->extraCallback(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 58
    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lo/lambda$onError$1;->onMessageChannelReady(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
