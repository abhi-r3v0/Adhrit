.class public Lo/setIconifiedByDefault;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isSubmitButtonEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setIconifiedByDefault$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;

.field private static onMessageChannelReady:Lo/setIconifiedByDefault;


# instance fields
.field private asBinder:Lo/setQueryRefinementEnabled;

.field private asInterface:Lo/setOnSuggestionListener;

.field public extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

.field public onNavigationEvent:Lo/getSuggestionsAdapter;

.field private onPostMessage:Landroid/content/Context;

.field private onTransact:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lo/setIconifiedByDefault;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setIconifiedByDefault;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLo/getQueryHint;I)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object p2, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    iput-object p2, p0, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    .line 79
    invoke-static {}, Lo/setOnSuggestionListener;->onNavigationEvent()Lo/setOnSuggestionListener;

    move-result-object p2

    iput-object p2, p0, Lo/setIconifiedByDefault;->asInterface:Lo/setOnSuggestionListener;

    const/4 v0, 0x1

    .line 1012
    iput-boolean v0, p2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    .line 87
    :try_start_0
    sget-object p2, Lo/getQueryHint;->onNavigationEvent:Lo/getQueryHint;

    if-ne p3, p2, :cond_0

    .line 3010
    new-instance p2, Lo/setQuery;

    invoke-direct {p2, p4}, Lo/setQuery;-><init>(I)V

    .line 88
    invoke-interface {p2}, Lo/setOnQueryTextListener;->onMessageChannelReady()Lo/getSuggestionsAdapter;

    move-result-object p2

    iput-object p2, p0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    .line 91
    :cond_0
    iput-object p1, p0, Lo/setIconifiedByDefault;->onPostMessage:Landroid/content/Context;

    .line 92
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lo/setIconifiedByDefault;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/setIconifiedByDefault;->onTransact:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 95
    iget-object p2, p0, Lo/setIconifiedByDefault;->asInterface:Lo/setOnSuggestionListener;

    sget-object p3, Lo/setIconifiedByDefault;->ICustomTabsCallback:Ljava/lang/String;

    .line 4010
    new-instance p4, Ljava/io/StringWriter;

    invoke-direct {p4}, Ljava/io/StringWriter;-><init>()V

    .line 4011
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 4012
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4013
    invoke-virtual {p4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4061
    iget-boolean p2, p2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz p2, :cond_1

    .line 4062
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4064
    :cond_1
    sget-object p2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lo/getQueryHint;I)Lo/setIconifiedByDefault;
    .locals 3

    .line 68
    sget-object v0, Lo/setIconifiedByDefault;->onMessageChannelReady:Lo/setIconifiedByDefault;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lo/setIconifiedByDefault;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lo/setIconifiedByDefault;->onMessageChannelReady:Lo/setIconifiedByDefault;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lo/setIconifiedByDefault;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lo/setIconifiedByDefault;-><init>(Landroid/content/Context;ZLo/getQueryHint;I)V

    sput-object v1, Lo/setIconifiedByDefault;->onMessageChannelReady:Lo/setIconifiedByDefault;

    .line 72
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 74
    :cond_1
    :goto_0
    sget-object p0, Lo/setIconifiedByDefault;->onMessageChannelReady:Lo/setIconifiedByDefault;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/setIconifiedByDefault;)Lo/setQueryRefinementEnabled;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/setIconifiedByDefault;->asBinder:Lo/setQueryRefinementEnabled;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/isIconfiedByDefault;Lo/setSubmitButtonEnabled;)V
    .locals 4

    .line 168
    iget-object v0, p0, Lo/setIconifiedByDefault;->asInterface:Lo/setOnSuggestionListener;

    sget-object v1, Lo/setIconifiedByDefault;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update called, status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", object = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", output = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-interface {p2}, Lo/setSubmitButtonEnabled;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callback = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/setIconifiedByDefault;->asBinder:Lo/setQueryRefinementEnabled;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7029
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 7030
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7032
    :cond_0
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 170
    :goto_0
    sget-object p2, Lo/isIconfiedByDefault;->ICustomTabsCallback:Lo/isIconfiedByDefault;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 171
    sget-object p2, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    iput-object p2, p0, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    .line 172
    iget-object p2, p0, Lo/setIconifiedByDefault;->onTransact:Landroid/os/Handler;

    new-instance v0, Lo/setIconifiedByDefault$2;

    invoke-direct {v0, p0}, Lo/setIconifiedByDefault$2;-><init>(Lo/setIconifiedByDefault;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_1
    sget-object p2, Lo/isIconfiedByDefault;->onMessageChannelReady:Lo/isIconfiedByDefault;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 182
    sget-object p1, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    iput-object p1, p0, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    .line 183
    iget-object p1, p0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    invoke-interface {p1}, Lo/getSuggestionsAdapter;->onNavigationEvent()V

    .line 184
    iget-object p1, p0, Lo/setIconifiedByDefault;->onTransact:Landroid/os/Handler;

    new-instance p2, Lo/setIconifiedByDefault$4;

    invoke-direct {p2, p0}, Lo/setIconifiedByDefault$4;-><init>(Lo/setIconifiedByDefault;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lo/setQueryRefinementEnabled;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cred/sproxlib/share/medium/sound/modulate/PublisherException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    sget-object v1, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object p1, p0, Lo/setIconifiedByDefault;->asInterface:Lo/setOnSuggestionListener;

    sget-object p2, Lo/setIconifiedByDefault;->ICustomTabsCallback:Ljava/lang/String;

    const-string p3, "already publishing"

    .line 5029
    iget-boolean p1, p1, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz p1, :cond_0

    .line 5030
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5032
    :cond_0
    sget-object p1, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    return p1

    .line 137
    :cond_1
    iput-object p2, p0, Lo/setIconifiedByDefault;->asBinder:Lo/setQueryRefinementEnabled;

    const/4 p2, 0x1

    .line 141
    :try_start_0
    iget-object v0, p0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    invoke-interface {v0, p1}, Lo/getSuggestionsAdapter;->onPostMessage(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    invoke-interface {p1, p0}, Lo/getSuggestionsAdapter;->onMessageChannelReady(Lo/isSubmitButtonEnabled;)V

    .line 143
    iget-object p1, p0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    invoke-interface {p1, p3}, Lo/getSuggestionsAdapter;->onNavigationEvent(I)V

    .line 144
    sget-object p1, Lo/setIconifiedByDefault$onNavigationEvent;->onNavigationEvent:Lo/setIconifiedByDefault$onNavigationEvent;

    iput-object p1, p0, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    .line 145
    iget-object p1, p0, Lo/setIconifiedByDefault;->onPostMessage:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 146
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x5

    if-lt p3, v0, :cond_3

    .line 147
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p1
    :try_end_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    return p2

    :catch_0
    move-exception p1

    .line 155
    iget-object p3, p0, Lo/setIconifiedByDefault;->asInterface:Lo/setOnSuggestionListener;

    sget-object v0, Lo/setIconifiedByDefault;->ICustomTabsCallback:Ljava/lang/String;

    .line 6010
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 6011
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 6012
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 6013
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6061
    iget-boolean p2, p3, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz p2, :cond_4

    .line 6062
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6064
    :cond_4
    sget-object p2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x3

    return p1

    :catch_1
    move-exception p1

    .line 153
    new-instance p2, Lcom/cred/sproxlib/share/medium/sound/modulate/PublisherException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p2}, Lcom/cred/sproxlib/share/medium/sound/modulate/PublisherException;-><init>()V

    throw p2
.end method
