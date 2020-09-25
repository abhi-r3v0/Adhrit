.class public final Lo/zze;
.super Lo/ParentEntityJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/zzd;


# direct methods
.method public constructor <init>(Lo/zzd;)V
    .locals 0

    invoke-direct {p0}, Lo/ParentEntityJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/zze;->ICustomTabsCallback:Lo/zzd;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/zze;->ICustomTabsCallback:Lo/zzd;

    invoke-interface {v0}, Lo/zzd;->u_()V

    return-void
.end method
