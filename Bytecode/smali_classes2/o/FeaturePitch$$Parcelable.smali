.class final Lo/FeaturePitch$$Parcelable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/FeaturePitch;


# direct methods
.method constructor <init>(Lo/FeaturePitch;)V
    .locals 0

    iput-object p1, p0, Lo/FeaturePitch$$Parcelable;->onNavigationEvent:Lo/FeaturePitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lo/getParcel;->cancelAll()Lo/FeaturePitchJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/FeaturePitch$$Parcelable;->onNavigationEvent:Lo/FeaturePitch;

    invoke-virtual {v0, v1}, Lo/FeaturePitchJsonAdapter;->extraCallback(Lo/FeaturePitch;)V

    return-void
.end method
