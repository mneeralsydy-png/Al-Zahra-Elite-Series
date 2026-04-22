.class public Lcom/whatsapp/yo/AIDashboardActivity;
.super Lcom/whatsapp/youbasha/ui/YoSettings/BasePreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/whatsapp/youbasha/ui/YoSettings/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/whatsapp/youbasha/ui/YoSettings/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Zahra AI Hub - \u0645\u0631\u0643\u0632 \u0627\u0644\u0632\u0647\u0631\u0627\u0621 \u0644\u0644\u0630\u0643\u0627\u0621 \u0627\u0644\u0627\u0635\u0637\u0646\u0627\u0639\u064a"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "abu_arab_settings"

    const-string v0, "layout"

    invoke-static {p1, v0}, Lcom/whatsapp/yo/yo;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/whatsapp/yo/AIDashboardActivity;->setContentView(I)V

    const-string p1, "ai_dashboard"

    const-string v0, "xml"

    invoke-static {p1, v0}, Lcom/whatsapp/yo/yo;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/whatsapp/yo/AIDashboardActivity;->addPreferencesFromResource(I)V

    return-void
.end method

.method public aiOpenVeo3(Landroid/view/View;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v1, "https://www.easemate.ai/veo-3-video-generator?utm_source=alzahra-app&utm_medium=inapp&utm_campaign=ai-hub"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/whatsapp/yo/AIDashboardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
