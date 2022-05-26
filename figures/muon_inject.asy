settings.outformat = "pdf";
settings.prc = false;
settings.render = 8;
import three;
import graph3;
defaultpen(fontsize(25pt));
currentprojection = perspective(7, 3, 3);
size(16cm, 0);

real r = 0.1;
real h = 0.2;
real h1 = 0.5 - 0.5 * h;
real h2 = 0.5 + 0.5 * h;
real phi = 39.23;

// draw(O -- 2X, L=Label("$x$",
// position=EndPoint));
// draw(O -- 2Y, L=Label("$y$",
// position=EndPoint));
// draw(O -- 2Z, L=Label("$z$",
// position=EndPoint));

draw(-0.6X-0.3Y+1.5Z -- 0.4X+0.7Y-0.5Z, arrow=Arrow3(DefaultHead2), p=gray(0.6) + linewidth(1.0pt));

draw(-0.6X-0.3Y+1.5Z -- -0.6X-0.3Y+0.5Z, dashed+gray);

draw(plane(O=X, Y, Z), blue);
draw(plane(O=Y, X, Z), blue);
draw(plane(O=Z, X, Y), blue);
// draw(box(O, (1, 1, 1)), blue+linewidth(0.6pt));

draw(circle(c=0.5X+0.5Y+h1*Z, r=r, normal=Z), black);
draw(circle(c=0.5X+0.5Y+h2*Z, r=r, normal=Z), black);

surface cyl = extrude(circle(c=0.5X+0.5Y+h1*Z, r=r, normal=Z), axis=h*Z);
draw(cyl, surfacepen=emissive(blue));
draw(shift(0.5X+0.5Y+(1-h1)*Z) * scale(r, r, 1) * unitdisk, surfacepen=emissive(blue));
draw(shift(0.5X+0.5Y+(1-h2)*Z) * scale(r, r, 1) * unitdisk, surfacepen=emissive(blue));

draw(shift(-0.5X-0.5Y) * scale(2, 2, 1) * shift(1.1Z) * unitplane, surfacepen=material(white+opacity(0.5)));

draw(shift(1.1Z) * plane(O=-0.5X-0.5Y, 2X, 2Y), grey);

draw("$2.16\mathrm{m}$", X -- X+Y, align=2.0X+0.5Y, p=fontsize(10pt));
draw("$2.16\mathrm{m}$", Y -- X+Y, align=0.5X+1.2Y, p=fontsize(10pt));
draw("$2.26\mathrm{m}$", X+Y -- X+Y+Z, align=X+Y+0.5Z, p=fontsize(10pt));

draw("$\theta$", arc(-0.6X-0.3Y+1.5Z, -0.6X-0.3Y+0.9Z, -0.3X+0.0Y+0.9Z), align=-0.55X-0.25Y+1.0Z, Arrow3());
draw("$\mu$", -0.6X-0.3Y+1.5Z -- -0.6X-0.3Y+1.5Z, align=-0.6X-0.3Y+1.5Z);

// draw this figure, run in command line: `asy muon_inject.asy`
