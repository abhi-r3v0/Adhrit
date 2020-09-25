.class public final Lo/writeCachedSettings$onPostMessage;
.super Ljava/lang/Object;

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeCachedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final com_mixpanel_android_fade_in:I = 0x7f01001a

.field public static final com_mixpanel_android_fade_out:I = 0x7f01001b


# instance fields
.field private final zzff:Lcom/google/firebase/perf/internal/RemoteConfigManager;


# direct methods
.method public constructor <init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/writeCachedSettings$onPostMessage;->zzff:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/writeCachedSettings$onPostMessage;->zzff:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zza(Ljava/lang/Exception;)V

    return-void
.end method
